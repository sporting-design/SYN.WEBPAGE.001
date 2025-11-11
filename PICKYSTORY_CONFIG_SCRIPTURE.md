# PICKYSTORY CONFIGURATION SCRIPTURE
## Immutable Record of Bundle System Architecture

**Document Version:** 1.0  
**Created:** [DATE]  
**Last Verified:** [DATE]  
**Responsible Party:** [NAME/ROLE]  
**PickyStory Account ID:** [ACCOUNT_ID]  
**App Version:** [VERSION]

---

## I. BASE SKU CONFIGURATION

### Product A: Synapex Performance Tape - Black
- **Shopify Product ID:** [INSERT_ID]
- **SKU:** `synapex-tape-black`
- **Price:** $19.95 USD
- **Handle:** `synapex-tape-black`
- **Track Quantity:** ✅ Enabled
- **Initial Inventory:** [NUMBER] units
- **Location:** [Shopify location name]
- **Fulfillment Service:** Manual
- **Vendor:** Synapex
- **Product Type:** Athletic Tape
- **Tags:** `performance-tape`, `black`, `base-sku`

### Product B: Synapex Performance Tape - Pink
- **Shopify Product ID:** [INSERT_ID]
- **SKU:** `synapex-tape-pink`
- **Price:** $19.95 USD
- **Handle:** `synapex-tape-pink`
- **Track Quantity:** ✅ Enabled
- **Initial Inventory:** [NUMBER] units
- **Location:** [Shopify location name]
- **Fulfillment Service:** Manual
- **Vendor:** Synapex
- **Product Type:** Athletic Tape
- **Tags:** `performance-tape`, `pink`, `base-sku`

---

## II. BUNDLE DEFINITIONS

### Bundle 1: Single Roll
- **PickyStory Bundle ID:** [INSERT_ID]
- **Bundle Type:** Multi-variant Bundle
- **Display Name:** "Synapex Performance Tape - Single Roll"
- **Bundle Handle:** `synapex-single-roll`

#### Variant 1.1: Single Roll - Black
- **Display Name:** "Single Roll - Black"
- **Price:** $19.95
- **Components:**
  - 1x `synapex-tape-black` (SKU: synapex-tape-black)
- **Discount Type:** None
- **Discount Amount:** $0.00
- **Inventory Tracking:** ✅ Track by components
- **Decrement Rule:** Decrease `synapex-tape-black` by 1 on purchase

#### Variant 1.2: Single Roll - Pink
- **Display Name:** "Single Roll - Pink"
- **Price:** $19.95
- **Components:**
  - 1x `synapex-tape-pink` (SKU: synapex-tape-pink)
- **Inventory Tracking:** ✅ Track by components
- **Decrement Rule:** Decrease `synapex-tape-pink` by 1 on purchase

---

### Bundle 2: Duo Pack
- **PickyStory Bundle ID:** [INSERT_ID]
- **Bundle Type:** Multi-variant Bundle
- **Display Name:** "Synapex Performance Tape - Duo Pack"
- **Bundle Handle:** `synapex-duo-pack`

#### Variant 2.1: Duo Pack - 1 Black, 1 Pink
- **Display Name:** "Duo Pack - 1 Black, 1 Pink"
- **Price:** $24.95
- **Components:**
  - 1x `synapex-tape-black` (SKU: synapex-tape-black)
  - 1x `synapex-tape-pink` (SKU: synapex-tape-pink)
- **Discount Type:** Fixed Amount
- **Discount Amount:** $14.95 total savings ($7.48 per roll savings)
- **Savings Percentage:** 37.4%
- **Inventory Tracking:** ✅ Track by components
- **Decrement Rule:** 
  - Decrease `synapex-tape-black` by 1
  - Decrease `synapex-tape-pink` by 1

---

### Bundle 3: Athlete Pack
- **PickyStory Bundle ID:** [INSERT_ID]
- **Bundle Type:** Multi-variant Bundle
- **Display Name:** "Synapex Performance Tape - Athlete Pack"
- **Bundle Handle:** `synapex-athlete-pack`

#### Variant 3.1: Athlete Pack - 3x Black
- **Display Name:** "Athlete Pack - 3x Black"
- **Price:** $34.95
- **Components:**
  - 3x `synapex-tape-black` (SKU: synapex-tape-black)
- **Discount Type:** Fixed Amount
- **Discount Amount:** $24.90 total savings ($8.30 per roll savings)
- **Per-Roll Price:** $11.65
- **Savings Percentage:** 41.6%
- **Inventory Tracking:** ✅ Track by components
- **Decrement Rule:** Decrease `synapex-tape-black` by 3 on purchase

#### Variant 3.2: Athlete Pack - 3x Pink
- **Display Name:** "Athlete Pack - 3x Pink"
- **Price:** $34.95
- **Components:**
  - 3x `synapex-tape-pink` (SKU: synapex-tape-pink)
- **Inventory Tracking:** ✅ Track by components
- **Decrement Rule:** Decrease `synapex-tape-pink` by 3 on purchase

---

### Bundle 4: Team Pack
- **PickyStory Bundle ID:** [INSERT_ID]
- **Bundle Type:** Multi-variant Bundle
- **Display Name:** "Synapex Performance Tape - Team Pack"
- **Bundle Handle:** `synapex-team-pack`

#### Variant 4.1: Team Pack - 5 Black, 5 Pink
- **Display Name:** "Team Pack - 5 Black, 5 Pink"
- **Price:** $89.95
- **Components:**
  - 5x `synapex-tape-black` (SKU: synapex-tape-black)
  - 5x `synapex-tape-pink` (SKU: synapex-tape-pink)
- **Discount Type:** Fixed Amount
- **Discount Amount:** $109.55 total savings
- **Per-Roll Price:** $8.995
- **Savings Percentage:** 54.9%
- **Inventory Tracking:** ✅ Track by components
- **Decrement Rule:**
  - Decrease `synapex-tape-black` by 5
  - Decrease `synapex-tape-pink` by 5

---

## III. DISPLAY CONFIGURATION

### Product Page Integration
- **Target Product:** Synapex Performance Tape - All Options
- **Product Handle:** `synapex-performance-tape`
- **Display Location:** Product page, above "Add to Cart"
- **Display Style:** Dropdown Variants (or Button Groups)
- **Bundle Selector Position:** Between price and quantity selector

### Sort Order
1. Single Roll
2. Duo Pack
3. Athlete Pack
4. Team Pack

### Visual Settings
- **Selector Theme:** [Light/Dark]
- **Button Style:** [Rounded/Square]
- **Font Family:** Inherit from theme
- **Color Scheme:** Matches theme primary button
- **Show Savings Badge:** ✅ Yes
- **Savings Badge Color:** #10b981 (Green)
- **Show Product Images:** ✅ Yes
- **Image Size:** Medium (300x300px)

---

## IV. BACKEND ORDER SETTINGS

### Order Line Item Display
- **Format:** `[Bundle Name] - [Variant Name]`
- **Example:** "Team Pack - 5 Black, 5 Pink"
- **Show Component SKUs in Notes:** ✅ Yes
- **Note Format:**
  ```
  Bundle Components:
  - 5x synapex-tape-black
  - 5x synapex-tape-pink
  ```

### Fulfillment Configuration
- **Create Separate Line Items:** ❌ No (single bundle line item)
- **Attach Component List:** ✅ Yes
- **Display in Packing Slip:** ✅ Yes
- **Send Component Details to Fulfillment:** ✅ Yes

### Inventory Management
- **Real-time Sync:** ✅ Enabled
- **Stock Check Frequency:** Per page load
- **Out-of-Stock Behavior:** Hide unavailable bundles
- **Low Stock Warning:** Show when < 10 units of any component

---

## V. ADVANCED SETTINGS

### Performance Settings
- **Script Loading:** Defer until user interaction (see Phase 1C)
- **Lazy Load Images:** ✅ Enabled
- **Preconnect Enabled:** ✅ Yes

### Analytics Integration
- **Google Analytics 4:** ✅ Enabled
- **Track Bundle Selection:** ✅ Yes
- **Track Savings Amount:** ✅ Yes
- **Custom Event Name:** `bundle_selected`

### Error Handling
- **Fallback Form:** ✅ Enabled (see Phase 2C)
- **Fallback Timeout:** 5 seconds
- **Error Logging:** ✅ Enabled (dataLayer)

---

## VI. VERIFICATION CHECKSUMS

Use these to verify configuration integrity:

```
Bundle Count: 4
Total Variants: 7
Price Points: 4 unique ($19.95, $24.95, $34.95, $89.95)
Component SKUs: 2 (synapex-tape-black, synapex-tape-pink)
Max Components in Bundle: 10 (Team Pack)
Total Possible Component Permutations: 7
```

---

## VII. CHANGE LOG

| Date | Change Description | Changed By | Reason |
|------|-------------------|------------|---------|
| [DATE] | Initial configuration | [NAME] | System launch |
| | | | |
| | | | |

---

## VIII. EMERGENCY ROLLBACK PROCEDURE

### If PickyStory Must Be Disabled:

1. **Immediate Action:**
   ```
   Shopify Admin → Apps → PickyStory → Disable app
   ```

2. **Restore Standard Product:**
   - Publish base products (`synapex-tape-black`, `synapex-tape-pink`)
   - Feature on collection pages
   - Test purchase flow

3. **Communication:**
   - Email template: [Link to template]
   - Social media post: [Link to draft]

4. **Data Preservation:**
   - Export all bundle configurations from PickyStory
   - Save to: `/Users/user/Desktop/SYN.Webpage.code/BUNDLE_BACKUP_[DATE].json`

---

**End of Configuration Scripture**


