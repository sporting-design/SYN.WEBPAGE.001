# BUNDLE SYSTEM MAINTENANCE MANDATE
## Post-Update Verification Checklist

**Purpose:** Execute this checklist after every theme update or PickyStory app update to ensure the integration remains intact.

**Frequency:** 
- After every Shopify theme update
- After every PickyStory app update
- Monthly (first Monday of each month)
- After any changes to product structure

**Estimated Completion Time:** 25-30 minutes

---

## EXECUTION RECORD

**Date:** _______________  
**Executed By:** _______________  
**Trigger Event:** ☐ Theme Update  ☐ App Update  ☐ Monthly Check  ☐ Other: _______________  
**Theme Version:** _______________  
**PickyStory App Version:** _______________  

---

## SECTION 1: PRE-FLIGHT CHECKS (5 minutes)

### 1.1 App Status Verification

| Check | Status | Notes |
|-------|--------|-------|
| PickyStory app shows "Active" in Shopify Admin | ☐ Pass ☐ Fail | |
| No error notifications in PickyStory dashboard | ☐ Pass ☐ Fail | |
| App permissions still granted | ☐ Pass ☐ Fail | |
| Billing status active (if applicable) | ☐ Pass ☐ Fail | |

**If any FAIL:** Contact PickyStory support before proceeding.

---

### 1.2 Base SKU Integrity

| Check | Status | Notes |
|-------|--------|-------|
| `synapex-tape-black` product exists and is active | ☐ Pass ☐ Fail | |
| `synapex-tape-pink` product exists and is active | ☐ Pass ☐ Fail | |
| Both products have inventory tracking enabled | ☐ Pass ☐ Fail | |
| SKU fields still populated correctly | ☐ Pass ☐ Fail | |
| Product prices remain $19.95 | ☐ Pass ☐ Fail | |

**If any FAIL:** Correct in Shopify Admin → Products before proceeding.

---

## SECTION 2: VISUAL STYLING VERIFICATION (10 minutes)

**Test Environment:** Use Chrome browser in Incognito mode  
**Test URL:** `https://synapex.store/products/synapex-performance-tape`

### 2.1 Desktop View (Screen width: 1920px)

| Element | Expected Behavior | Status | Screenshot |
|---------|------------------|--------|------------|
| **Bundle Selector Visibility** | Selector displays above "Add to Cart" button | ☐ Pass ☐ Fail | ☐ Taken |
| **Bundle Options Layout** | All 4 bundles visible (Single, Duo, Athlete, Team) | ☐ Pass ☐ Fail | ☐ Taken |
| **Price Display** | Prices show correctly: $19.95, $24.95, $34.95, $89.95 | ☐ Pass ☐ Fail | ☐ Taken |
| **Savings Badge** | Green badge shows savings % on Duo, Athlete, Team | ☐ Pass ☐ Fail | ☐ Taken |
| **Font Consistency** | Bundle text matches site font and size | ☐ Pass ☐ Fail | ☐ Taken |
| **Color Scheme** | Buttons use primary brand color (#3B82F6 or custom) | ☐ Pass ☐ Fail | ☐ Taken |
| **Hover States** | Bundle options highlight on hover | ☐ Pass ☐ Fail | ☐ Taken |
| **Product Images** | Bundle preview images load and display correctly | ☐ Pass ☐ Fail | ☐ Taken |
| **Layout Shift** | No significant CLS (Cumulative Layout Shift) on load | ☐ Pass ☐ Fail | ☐ Taken |
| **Responsive Spacing** | Adequate padding/margin around selector | ☐ Pass ☐ Fail | ☐ Taken |

---

### 2.2 Mobile View (Screen width: 375px - iPhone)

| Element | Expected Behavior | Status | Screenshot |
|---------|------------------|--------|------------|
| **Bundle Selector Responsive** | Selector adjusts to mobile width | ☐ Pass ☐ Fail | ☐ Taken |
| **Touch Targets** | Buttons are ≥44px height (accessible) | ☐ Pass ☐ Fail | ☐ Taken |
| **Horizontal Scrolling** | No horizontal scroll on product page | ☐ Pass ☐ Fail | ☐ Taken |
| **Text Readability** | All text legible at mobile size | ☐ Pass ☐ Fail | ☐ Taken |
| **Image Optimization** | Images load appropriately sized for mobile | ☐ Pass ☐ Fail | ☐ Taken |

**If any visual FAIL:** Check PickyStory dashboard → Display Settings → Re-save settings to trigger re-render.

---

## SECTION 3: FUNCTIONAL TESTING (8 minutes)

**Use Shopify Test Mode:** Enable test orders in Shopify Admin → Settings → Payments

### 3.1 Add-to-Cart Functionality

Test each bundle by completing these steps:

**Bundle 1: Single Roll - Black**
1. Select "Single Roll - Black"
2. Click "Add to Cart"
3. View cart

| Verification | Expected Result | Status |
|-------------|----------------|--------|
| Added to cart successfully | Shows in cart | ☐ Pass ☐ Fail |
| Correct product name | "Single Roll - Black" | ☐ Pass ☐ Fail |
| Correct price | $19.95 | ☐ Pass ☐ Fail |
| Cart quantity adjustable | Can increase/decrease | ☐ Pass ☐ Fail |

**Bundle 2: Duo Pack - 1 Black, 1 Pink**
(Repeat steps above)

| Verification | Expected Result | Status |
|-------------|----------------|--------|
| Added to cart successfully | Shows in cart | ☐ Pass ☐ Fail |
| Correct product name | "Duo Pack - 1 Black, 1 Pink" | ☐ Pass ☐ Fail |
| Correct price | $24.95 | ☐ Pass ☐ Fail |

**Bundle 3: Athlete Pack - 3x Black**
(Repeat steps above)

| Verification | Expected Result | Status |
|-------------|----------------|--------|
| Correct product name | "Athlete Pack - 3x Black" | ☐ Pass ☐ Fail |
| Correct price | $34.95 | ☐ Pass ☐ Fail |

**Bundle 4: Team Pack - 5 Black, 5 Pink**
(Repeat steps above)

| Verification | Expected Result | Status |
|-------------|----------------|--------|
| Correct product name | "Team Pack - 5 Black, 5 Pink" | ☐ Pass ☐ Fail |
| Correct price | $89.95 | ☐ Pass ☐ Fail |

---

### 3.2 Complete Test Order

**Instructions:**
1. Add "Athlete Pack - 3x Pink" to cart
2. Proceed to checkout
3. Use Shopify test payment: `1` (Visa test card)
4. Complete order

**Order Verification:**

| Check | Expected Result | Status |
|-------|----------------|--------|
| Order appears in Shopify Admin → Orders | Visible immediately | ☐ Pass ☐ Fail |
| Order line item name correct | "Athlete Pack - 3x Pink" | ☐ Pass ☐ Fail |
| Order total correct | $34.95 + tax/shipping | ☐ Pass ☐ Fail |
| Order notes include component SKUs | "3x synapex-tape-pink" in notes | ☐ Pass ☐ Fail |

**Inventory Verification (Critical):**

| Check | Before Order | After Order | Decrement Correct? | Status |
|-------|-------------|-------------|-------------------|--------|
| `synapex-tape-pink` inventory | ___ units | ___ units | ☐ -3 units | ☐ Pass ☐ Fail |

**If inventory did NOT decrease by 3:** CRITICAL FAILURE - Contact PickyStory support immediately.

---

## SECTION 4: PERFORMANCE VALIDATION (5 minutes)

### 4.1 Page Load Speed Test

**Tool:** Chrome DevTools Lighthouse

**Instructions:**
1. Open product page in Incognito: `https://synapex.store/products/synapex-performance-tape`
2. Open DevTools (F12) → Lighthouse tab
3. Select "Desktop" → "Performance" only → "Analyze page load"
4. Record results

| Metric | Result | Target | Status |
|--------|--------|--------|--------|
| **Performance Score** | ___ / 100 | > 85 | ☐ Pass ☐ Fail |
| **LCP** (Largest Contentful Paint) | ___ s | < 2.5s | ☐ Pass ☐ Fail |
| **TBT** (Total Blocking Time) | ___ ms | < 300ms | ☐ Pass ☐ Fail |
| **CLS** (Cumulative Layout Shift) | ___ | < 0.1 | ☐ Pass ☐ Fail |

**Compare to Baseline:** Reference `PICKYSTORY_CONFIG_SCRIPTURE.md` Section I-B for baseline metrics.

**Latency Tax Calculation:**
```
Current LCP: ___ s
Baseline LCP: ___ s
Latency Tax: ___ s
```

**If Latency Tax > 500ms:** Implement optimizations from "Resilience Protocol Phase 1C"

---

### 4.2 Console Error Check

**Instructions:**
1. Product page open with DevTools Console tab visible
2. Refresh page (Cmd/Ctrl + Shift + R - hard refresh)
3. Review console for errors

| Check | Expected Result | Status |
|-------|----------------|--------|
| No JavaScript errors related to PickyStory | Clean console or warnings only | ☐ Pass ☐ Fail |
| No 404 errors for PickyStory assets | All resources load (200 status) | ☐ Pass ☐ Fail |
| No CORS errors | No cross-origin issues | ☐ Pass ☐ Fail |

**If any console errors:** Screenshot and contact PickyStory support.

---

## SECTION 5: FALLBACK MECHANISM VERIFICATION (3 minutes)

### 5.1 Test Graceful Degradation

**Instructions:**
1. Open product page
2. Open DevTools → Network tab
3. Right-click → "Block request URL"
4. Add pattern: `*pickystory.com*`
5. Hard refresh page (Cmd/Ctrl + Shift + R)

**Fallback Verification:**

| Check | Expected Behavior | Status |
|-------|------------------|--------|
| Page loads without errors | No white screen / crash | ☐ Pass ☐ Fail |
| Fallback form appears | Standard product form visible | ☐ Pass ☐ Fail |
| "Add to Cart" button functional | Can add base product to cart | ☐ Pass ☐ Fail |
| Fallback timeout appropriate | Form appears within 5 seconds | ☐ Pass ☐ Fail |

**After test:** Remove block rule and verify PickyStory loads normally.

**If fallback does NOT work:** Review `/snippets/product-form-fallback.liquid` implementation.

---

## SECTION 6: CROSS-BROWSER COMPATIBILITY (2 minutes)

**Test on:**

| Browser | Version | Bundle Selector Displays | Add to Cart Works | Status |
|---------|---------|-------------------------|------------------|--------|
| Chrome | Latest | ☐ | ☐ | ☐ Pass ☐ Fail |
| Safari | Latest | ☐ | ☐ | ☐ Pass ☐ Fail |
| Firefox | Latest | ☐ | ☐ | ☐ Pass ☐ Fail |
| Edge | Latest | ☐ | ☐ | ☐ Pass ☐ Fail |

**Mobile Browsers:**

| Browser | Device | Bundle Selector Works | Status |
|---------|--------|---------------------|--------|
| Safari iOS | iPhone | ☐ | ☐ Pass ☐ Fail |
| Chrome Android | Android | ☐ | ☐ Pass ☐ Fail |

---

## SECTION 7: INTEGRATION SEAM INSPECTION (2 minutes)

### 7.1 Theme Files Integrity

**Check these files for unexpected modifications:**

| File Path | Expected State | Status | Notes |
|-----------|---------------|--------|-------|
| `/layout/theme.liquid` | PickyStory script tags present | ☐ Pass ☐ Fail | |
| `/sections/product-information.liquid` | Bundle container div present | ☐ Pass ☐ Fail | |
| `/snippets/product-form-fallback.liquid` | Fallback code intact | ☐ Pass ☐ Fail | |
| `/assets/base.css` | Custom bundle CSS present (line ~4140) | ☐ Pass ☐ Fail | |

**Verification Command:**
```bash
cd /Users/user/Desktop/SYN.Webpage.code
grep -n "pickystory" layout/theme.liquid
grep -n "pickystory-container" sections/product-information.liquid
```

**If any files missing code:** Re-implement from backup or Configuration Scripture.

---

## FINAL ASSESSMENT

### Overall System Status

| Category | Pass/Fail | Critical? |
|----------|-----------|-----------|
| App Status | ☐ Pass ☐ Fail | ✅ Yes |
| Visual Styling | ☐ Pass ☐ Fail | ❌ No |
| Functional Testing | ☐ Pass ☐ Fail | ✅ Yes |
| Performance | ☐ Pass ☐ Fail | ❌ No |
| Fallback Mechanism | ☐ Pass ☐ Fail | ✅ Yes |
| Cross-Browser | ☐ Pass ☐ Fail | ❌ No |
| File Integrity | ☐ Pass ☐ Fail | ✅ Yes |

**Result:** ☐ ALL SYSTEMS OPERATIONAL  ☐ ISSUES IDENTIFIED

---

## ISSUE LOG

**If any checks failed, document here:**

| Section | Issue Description | Severity | Action Taken | Resolved? |
|---------|------------------|----------|--------------|-----------|
| | | ☐ Critical ☐ Warning | | ☐ Yes ☐ No |
| | | ☐ Critical ☐ Warning | | ☐ Yes ☐ No |
| | | ☐ Critical ☐ Warning | | ☐ Yes ☐ No |

---

## ESCALATION PROCEDURE

**If CRITICAL failures persist:**

1. **Immediate:** Disable PickyStory app (Shopify Admin → Apps → Disable)
2. **Verify:** Fallback form functioning (base product purchasable)
3. **Contact:** PickyStory Support
   - Email: support@pickystory.com
   - Dashboard: Open support ticket
   - Include: Screenshots, console errors, this checklist
4. **Notify:** Store owner/stakeholders of temporary limited functionality
5. **Document:** All communications in Configuration Scripture Change Log

---

## SIGN-OFF

**Maintenance Completed By:**  
Name: _______________  
Date: _______________  
Time: _______________  

**Verification Status:** ☐ PASSED  ☐ PASSED WITH WARNINGS  ☐ FAILED

**Next Scheduled Check:** _______________

---

**Archive this completed checklist:** Save to `/BUNDLE_MAINTENANCE_LOGS/YYYY-MM-DD_maintenance.md`

