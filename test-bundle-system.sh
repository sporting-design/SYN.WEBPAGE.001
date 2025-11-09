#!/bin/bash

################################################################################
# BUNDLE SYSTEM AUTOMATED TEST SCRIPT
# Part of Resilience & Validation Protocol
# 
# Purpose: Automate basic health checks for PickyStory bundle integration
# Usage: ./test-bundle-system.sh
# Duration: ~2 minutes
################################################################################

set -e  # Exit on error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Configuration
PRODUCT_URL="https://synapex.store/products/synapex-performance-tape"
PICKYSTORY_CDN="https://cdn.pickystory.com"
TIMEOUT=10

echo -e "${BLUE}╔════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║   SYNAPEX BUNDLE SYSTEM HEALTH CHECK                  ║${NC}"
echo -e "${BLUE}║   Resilience Protocol - Automated Testing             ║${NC}"
echo -e "${BLUE}╚════════════════════════════════════════════════════════╝${NC}"
echo ""

################################################################################
# TEST 1: PickyStory CDN Availability
################################################################################

echo -e "${YELLOW}[TEST 1/5]${NC} Checking PickyStory CDN availability..."

if curl -Is --max-time $TIMEOUT "$PICKYSTORY_CDN" | head -n 1 | grep -q "200\|301\|302"; then
    echo -e "${GREEN}✓ PASS${NC} - PickyStory CDN is reachable"
else
    echo -e "${RED}✗ FAIL${NC} - PickyStory CDN is not responding"
    echo "  Action: Check internet connection or PickyStory service status"
fi

echo ""

################################################################################
# TEST 2: Product Page Accessibility
################################################################################

echo -e "${YELLOW}[TEST 2/5]${NC} Checking product page accessibility..."

HTTP_CODE=$(curl -Is --max-time $TIMEOUT "$PRODUCT_URL" | head -n 1 | awk '{print $2}')

if [ "$HTTP_CODE" = "200" ]; then
    echo -e "${GREEN}✓ PASS${NC} - Product page is accessible (HTTP $HTTP_CODE)"
else
    echo -e "${RED}✗ FAIL${NC} - Product page returned HTTP $HTTP_CODE"
    echo "  Action: Check Shopify store status and product visibility"
fi

echo ""

################################################################################
# TEST 3: PickyStory Script Tags Present
################################################################################

echo -e "${YELLOW}[TEST 3/5]${NC} Checking for PickyStory script integration..."

PAGE_CONTENT=$(curl -s --max-time $TIMEOUT "$PRODUCT_URL")

if echo "$PAGE_CONTENT" | grep -q "pickystory"; then
    echo -e "${GREEN}✓ PASS${NC} - PickyStory scripts detected in page source"
else
    echo -e "${RED}✗ FAIL${NC} - PickyStory scripts not found in page"
    echo "  Action: Verify PickyStory app is enabled and theme integration intact"
fi

echo ""

################################################################################
# TEST 4: Fallback Form Present
################################################################################

echo -e "${YELLOW}[TEST 4/5]${NC} Checking for fallback form..."

if echo "$PAGE_CONTENT" | grep -q "fallback-product-form"; then
    echo -e "${GREEN}✓ PASS${NC} - Fallback form is present in page"
else
    echo -e "${YELLOW}⚠ WARNING${NC} - Fallback form not detected"
    echo "  Action: Verify snippets/product-form-fallback.liquid is included"
fi

echo ""

################################################################################
# TEST 5: Critical Theme Files Exist
################################################################################

echo -e "${YELLOW}[TEST 5/5]${NC} Checking critical theme files..."

FILES_TO_CHECK=(
    "snippets/product-form-fallback.liquid"
    "PICKYSTORY_CONFIG_SCRIPTURE.md"
    "BUNDLE_MAINTENANCE_MANDATE.md"
    "PERFORMANCE_BASELINE_TRACKER.csv"
)

ALL_FILES_PRESENT=true

for file in "${FILES_TO_CHECK[@]}"; do
    if [ -f "$file" ]; then
        echo -e "  ${GREEN}✓${NC} $file"
    else
        echo -e "  ${RED}✗${NC} $file ${RED}(MISSING)${NC}"
        ALL_FILES_PRESENT=false
    fi
done

if [ "$ALL_FILES_PRESENT" = true ]; then
    echo -e "${GREEN}✓ PASS${NC} - All critical files present"
else
    echo -e "${RED}✗ FAIL${NC} - Some critical files are missing"
fi

echo ""

################################################################################
# PERFORMANCE CHECK (Optional)
################################################################################

echo -e "${YELLOW}[BONUS CHECK]${NC} Quick performance snapshot..."

if command -v curl &> /dev/null; then
    LOAD_TIME=$(curl -o /dev/null -s -w '%{time_total}\n' "$PRODUCT_URL")
    LOAD_TIME_MS=$(echo "$LOAD_TIME * 1000" | bc | cut -d'.' -f1)
    
    if [ "$LOAD_TIME_MS" -lt 2500 ]; then
        echo -e "${GREEN}✓ EXCELLENT${NC} - Page load time: ${LOAD_TIME}s (${LOAD_TIME_MS}ms)"
    elif [ "$LOAD_TIME_MS" -lt 4000 ]; then
        echo -e "${YELLOW}⚠ ACCEPTABLE${NC} - Page load time: ${LOAD_TIME}s (${LOAD_TIME_MS}ms)"
        echo "  Consider: Performance optimizations from Phase 1C"
    else
        echo -e "${RED}✗ SLOW${NC} - Page load time: ${LOAD_TIME}s (${LOAD_TIME_MS}ms)"
        echo "  Action: Run full performance audit immediately"
    fi
else
    echo "  Skipped (curl not available)"
fi

echo ""

################################################################################
# SUMMARY
################################################################################

echo -e "${BLUE}════════════════════════════════════════════════════════${NC}"
echo -e "${BLUE}  TEST COMPLETE - $(date)${NC}"
echo -e "${BLUE}════════════════════════════════════════════════════════${NC}"
echo ""
echo -e "Next steps:"
echo -e "  1. If any tests failed, consult ${YELLOW}RESILIENCE_PROTOCOL_QUICK_REFERENCE.md${NC}"
echo -e "  2. For comprehensive testing, run ${YELLOW}BUNDLE_MAINTENANCE_MANDATE.md${NC}"
echo -e "  3. Log results in ${YELLOW}PERFORMANCE_BASELINE_TRACKER.csv${NC}"
echo ""
echo -e "${GREEN}System health check complete!${NC}"
echo ""

################################################################################
# ADDITIONAL DIAGNOSTICS (Verbose Mode)
################################################################################

if [ "$1" = "--verbose" ] || [ "$1" = "-v" ]; then
    echo -e "${BLUE}═══ VERBOSE DIAGNOSTICS ═══${NC}"
    echo ""
    
    echo "PickyStory Script Detection:"
    echo "$PAGE_CONTENT" | grep -o 'pickystory[^"]*' | head -5
    echo ""
    
    echo "Response Headers:"
    curl -Is "$PRODUCT_URL" | head -10
    echo ""
    
    echo "Local Files Present:"
    ls -lh snippets/product-form-fallback.liquid 2>/dev/null || echo "  Fallback snippet: NOT FOUND"
    ls -lh PICKYSTORY_CONFIG_SCRIPTURE.md 2>/dev/null || echo "  Config scripture: NOT FOUND"
    echo ""
fi

exit 0

