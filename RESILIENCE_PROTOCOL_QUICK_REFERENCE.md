# RESILIENCE PROTOCOL - QUICK REFERENCE
## 5-Minute Emergency Guide

---

## 🚨 EMERGENCY RESPONSE

**If bundles are broken on live site:**

```bash
# 1. Immediate: Disable PickyStory
Shopify Admin → Apps → PickyStory → Disable

# 2. Verify: Fallback form appears
Visit: https://synapex.store/products/synapex-performance-tape
Confirm: Standard "Add to Cart" button is visible

# 3. Test: Can customers still buy?
Add base product to cart → Complete test checkout
```

**If fallback also broken:**
```
CRITICAL: Manually publish base products
1. Admin → Products → synapex-tape-black → Make visible
2. Admin → Products → synapex-tape-pink → Make visible  
3. Feature on homepage temporarily
```

---

## 📊 PERFORMANCE CHECK (2 minutes)

**Quick Lighthouse Test:**
```
1. Open: https://synapex.store/products/synapex-performance-tape
2. Chrome DevTools (F12) → Lighthouse
3. Desktop → Performance → Analyze
4. Check: Score > 85? LCP < 2.5s?
```

**If performance degraded:**
- Run: BUNDLE_MAINTENANCE_MANDATE.md Section 4
- Implement: Phase 1C optimizations

---

## 🧪 DEPENDENCY FAILURE TEST (3 minutes)

**Block PickyStory and verify fallback:**

```
Method 1 (Browser):
1. DevTools → Network tab
2. Right-click → Block request URL
3. Pattern: *pickystory.com*
4. Refresh page
5. Verify: Fallback form appears

Method 2 (hosts file):
sudo nano /etc/hosts
Add: 127.0.0.1 cdn.pickystory.com
Test page → Remove line
```

**Expected Result:** ✅ Standard product form appears within 5 seconds

---

## 📋 MONTHLY CHECKLIST (15 minutes)

Execute on first Monday of each month:

```
☐ 1. Run full BUNDLE_MAINTENANCE_MANDATE.md
☐ 2. Complete test order for each bundle type
☐ 3. Verify inventory decrements correctly  
☐ 4. Update PERFORMANCE_BASELINE_TRACKER.csv
☐ 5. Check PickyStory app for updates
☐ 6. Review analytics for fallback activations
```

---

## 🔧 COMMON ISSUES & FIXES

### Issue: "Bundle selector not displaying"

**Diagnosis:**
```javascript
// In browser console:
console.log(window.PickyStory);
// Should show object, not undefined
```

**Fix:**
```
1. PickyStory Dashboard → Display Settings
2. Verify: Target product = "synapex-performance-tape"
3. Re-save settings
4. Clear theme cache: ?cache=bust
```

---

### Issue: "Inventory not decrementing"

**Diagnosis:**
```
1. Place test order for Duo Pack
2. Check: Did both black AND pink decrease by 1?
```

**Fix:**
```
PickyStory Dashboard → Bundle → Duo Pack → Settings
☑ Track inventory by components  
☑ Decrement component SKUs on purchase
Save → Test again
```

---

### Issue: "Performance degraded"

**Quick Wins:**
```liquid
1. Add to theme.liquid <head>:
<link rel="preconnect" href="https://cdn.pickystory.com" crossorigin>

2. Defer PickyStory load (see Phase 1C)

3. Enable lazy loading for bundle images
```

---

## 📞 SUPPORT CONTACTS

**PickyStory Support:**
- Email: support@pickystory.com
- Dashboard: Support tab → Open ticket
- Response time: ~4 hours (business days)

**Shopify Support:**
- URL: shopify.com/admin/support
- Phone: 1-855-816-3857
- 24/7 availability

---

## 📁 KEY FILES REFERENCE

```
Configuration:
├── PICKYSTORY_CONFIG_SCRIPTURE.md       # Immutable config record
├── BUNDLE_MAINTENANCE_MANDATE.md        # Monthly checklist
└── PERFORMANCE_BASELINE_TRACKER.csv     # Performance history

Theme Files:
├── snippets/product-form-fallback.liquid   # Graceful degradation
├── sections/product-information.liquid     # Bundle integration point
└── assets/base.css (line ~4140)           # Bundle custom styles

Testing:
└── test-bundle-purchase.sh                # Automated test script
```

---

## ⚡ QUICK COMMANDS

**Check if PickyStory is loading:**
```bash
curl -I https://cdn.pickystory.com/assets/app.js
# Should return: HTTP/2 200
```

**Test product page performance:**
```bash
npx lighthouse https://synapex.store/products/synapex-performance-tape \
  --only-categories=performance \
  --output=html \
  --output-path=./performance-report.html
```

**View recent orders with bundles:**
```
Shopify Admin → Orders → Filter: "Product contains 'Pack'"
Review: Correct prices and component notes?
```

---

## 🎯 SUCCESS METRICS

**System is healthy when:**
- ✅ All 4 bundles visible on product page
- ✅ Performance Score > 85
- ✅ Test order completes successfully
- ✅ Inventory decrements correctly for all components
- ✅ Fallback form appears when PickyStory blocked
- ✅ No console errors related to PickyStory
- ✅ Mobile experience smooth and functional

**Review weekly:**
```
Analytics → Behavior → Site Speed
Target: < 2.5s avg page load for product pages
```

---

## 📚 FULL DOCUMENTATION INDEX

1. **PICKYSTORY_CONFIG_SCRIPTURE.md**
   - Complete configuration record
   - Bundle definitions
   - Pricing structure
   - Emergency rollback

2. **BUNDLE_MAINTENANCE_MANDATE.md**
   - Post-update checklist (30 min)
   - Visual verification
   - Functional testing
   - Performance validation

3. **Resilience Protocol** (this doc's parent)
   - Phase 1: Performance Audit
   - Phase 2: Failure Simulation  
   - Phase 3: Configuration Management

4. **PERFORMANCE_BASELINE_TRACKER.csv**
   - Track metrics over time
   - Identify performance regression
   - Calculate latency tax

---

## 🔄 UPDATE SCHEDULE

| Task | Frequency | Duration | Last Completed |
|------|-----------|----------|----------------|
| Quick health check | Weekly | 5 min | ___________ |
| Full maintenance mandate | Monthly | 30 min | ___________ |
| Performance baseline | Quarterly | 15 min | ___________ |
| Configuration audit | Quarterly | 20 min | ___________ |

---

**Last Updated:** 2025-11-08  
**Protocol Version:** 1.0  
**Next Review Date:** [Set 90 days from implementation]


