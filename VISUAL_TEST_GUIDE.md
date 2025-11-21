# 🎨 PEV Visual Testing Guide

## Quick Visual Verification Checklist

Use this guide to quickly verify the PEV (Persistent Engagement Vector) is working correctly after deployment.

---

## 🖥️ Desktop Testing (1920x1080)

### 1. Homepage Test
```
✓ Open homepage
✓ Scroll to top
✓ Look for floating button at bottom center
✓ Button should read "SHOP THE STANDARD" (or custom text)
✓ White background, black text/border (default colors)
```

**Expected Visual**:
```
┌─────────────────────────────────────────┐
│                                         │
│         [Website Content]               │
│                                         │
│                                         │
│                                         │
│              [Footer]                   │
│                                         │
└─────────────────────────────────────────┘
            ┌──────────────────┐
            │ ≠ SHOP THE STD   │ ← Floating button
            └──────────────────┘
```

### 2. Hover Test
```
✓ Move mouse over button
✓ Colors should invert (black bg, white text)
✓ Button should lift 4px
✓ Shadow should become more prominent
✓ Transition should be smooth (~300ms)
```

**Visual Feedback**:
```
Before Hover:          After Hover:
┌──────────────┐      ┌──────────────┐
│ ≠ SHOP TAPE  │  →   │ ≠ SHOP TAPE  │ (lifted)
│ (white bg)   │      │ (black bg)   │
└──────────────┘      └──────────────┘
                      (larger shadow)
```

### 3. Scroll Test
```
✓ Scroll down slowly
✓ Button stays at bottom center
✓ When within 150px of footer, button disappears
✓ Scroll back up
✓ Button reappears smoothly
```

**Behavior Map**:
```
Page Top     → Button Visible ✓
Mid Page     → Button Visible ✓
Near Footer  → Button Hidden ✗
Back to Top  → Button Visible ✓
```

### 4. Product Page Test
```
✓ Navigate to any product page
✓ Button should NOT appear
✓ This is intentional (avoid competing CTAs)
```

**Expected**:
```
Product Page
┌─────────────────────────────────────────┐
│         [Product Images]                │
│         [Add to Cart Button]            │
│         [Product Details]               │
│                                         │
│              [Footer]                   │
└─────────────────────────────────────────┘
         (No floating button)
```

---

## 📱 Mobile Testing (375x667 - iPhone SE)

### 1. Size Test
```
✓ Button should be smaller than desktop
✓ Text: 0.625rem (10px)
✓ Padding: 0.375rem 0.75rem
✓ Bottom offset: 12px
✓ Should not cover footer or content
```

**Mobile Visual**:
```
┌─────────────┐
│   Content   │
│             │
│             │
│   Footer    │
└─────────────┘
   ┌───────┐
   │≠ SHOP │ ← Smaller button
   └───────┘
```

### 2. Touch Test
```
✓ Tap button with finger
✓ Press feedback (slight depress)
✓ Navigates to correct URL
✓ No scroll jump
✓ Smooth transition
```

### 3. Responsive Breakpoints
Test at these widths:
- **375px**: iPhone SE (standard mobile)
- **360px**: Galaxy Fold (small mobile)
- **768px**: iPad (tablet)
- **1920px**: Desktop

---

## ♿ Accessibility Testing

### 1. Keyboard Navigation
```
✓ Press Tab key repeatedly
✓ Button should receive focus
✓ Focus ring should be visible (3px outline)
✓ Press Enter to activate
✓ Should navigate to link destination
```

**Visual Focus State**:
```
┌──────────────────┐
│ ≠ SHOP THE STD   │ ← Visible outline
└──────────────────┘
  (outline: 3px)
```

### 2. Screen Reader Test (Optional)
```
✓ Enable VoiceOver (Mac) or NVDA (Windows)
✓ Tab to button
✓ Should announce: "SHOP THE STANDARD, link"
✓ Press Enter to activate
```

### 3. Reduced Motion Test
```
✓ System Preferences → Accessibility → Reduce Motion → ON
✓ Button should still appear/disappear
✓ But transitions should be instant (no animation)
```

### 4. High Contrast Test
```
✓ System Preferences → Accessibility → Increase Contrast → ON
✓ Button border should be thicker (3px instead of 2px)
✓ All text should be clearly readable
```

---

## 🎨 Shopify Admin Settings Test

### 1. Access Settings
```
✓ Shopify Admin → Online Store → Themes
✓ Click "Customize" on current theme
✓ Click gear icon (Theme Settings)
✓ Scroll to "⚡ Floating CTA Button (PEV)"
✓ Section should have emoji icon
```

### 2. Test Enable/Disable
```
✓ Toggle "Enable Floating Button" OFF
✓ Click Save
✓ Refresh preview
✓ Button should disappear
✓ Toggle back ON
✓ Button should reappear
```

### 3. Test Text Change
```
✓ Change "Button Text" to "BUY NOW"
✓ Click Save
✓ Refresh preview
✓ Button should now read "BUY NOW"
```

### 4. Test Color Change
```
✓ Change "Background Color" to black (#000000)
✓ Change "Text Color" to white (#FFFFFF)
✓ Click Save
✓ Refresh preview
✓ Button should now be inverted colors
```

**Before/After Colors**:
```
Default:              Custom:
┌──────────┐         ┌──────────┐
│ ≠ SHOP   │   →     │ ≠ SHOP   │
│ (white)  │         │ (black)  │
└──────────┘         └──────────┘
```

### 5. Test Link Change
```
✓ Change "Button Link" to /collections/tape
✓ Click Save
✓ Refresh preview
✓ Click button
✓ Should navigate to /collections/tape
```

---

## 🐛 Common Issues & Quick Fixes

### Issue: Button Not Appearing
**Check**:
- [ ] Is "Enable Floating Button" toggled ON?
- [ ] Are you on a product page? (Intentionally hidden)
- [ ] Are you scrolled to the bottom? (Auto-hides near footer)
- [ ] Check browser console for errors (F12)

### Issue: Button Appears But Wrong Colors
**Check**:
- [ ] Settings saved in Shopify Admin?
- [ ] Hard refresh browser (Cmd+Shift+R / Ctrl+F5)
- [ ] Check Theme Settings → Colors
- [ ] Verify hex codes are correct (#FFFFFF, #000000)

### Issue: Button Doesn't Respond to Clicks
**Check**:
- [ ] Is "Button Link" field populated?
- [ ] Check browser console for JavaScript errors
- [ ] Try in different browser
- [ ] Clear cache and cookies

### Issue: Button Overlaps Footer
**Check**:
- [ ] Footer height exceeds 150px buffer?
- [ ] Check footer z-index (should be < 999)
- [ ] Adjust footer padding if needed

### Issue: Button Too Small on Mobile
**Check**:
- [ ] Viewing on actual device (not just DevTools)?
- [ ] Browser zoom level at 100%?
- [ ] Responsive breakpoints working? (check CSS)

---

## 📊 Analytics Verification

### 1. Google Analytics 4
```
✓ Open GA4 Real-Time view
✓ Click the PEV button
✓ Should see "pev_click" event in real-time
✓ Check event parameters:
  - pev_location: "index" (or current template)
  - pev_text: "SHOP THE STANDARD"
  - pev_url: "/collections/all"
```

### 2. Shopify Analytics
```
✓ Shopify Admin → Analytics → Events
✓ Click PEV button multiple times
✓ Wait 5-10 minutes
✓ Should see "PEV Click" custom events
```

### 3. Browser Console Check
```
✓ Open browser DevTools (F12)
✓ Go to Console tab
✓ Click PEV button
✓ Should see: [PEV] Click event tracked
✓ Verify dataLayer.push() called
```

---

## 🎬 Complete Test Sequence (5 Minutes)

### Rapid Full Test
```
1. ✓ Open homepage → Button visible
2. ✓ Hover button → Color inversion
3. ✓ Click button → Navigation works
4. ✓ Navigate to product page → Button hidden
5. ✓ Back to homepage → Button visible
6. ✓ Scroll to footer → Button disappears
7. ✓ Scroll back up → Button reappears
8. ✓ Tab key → Button receives focus
9. ✓ Enter key → Navigation works
10. ✓ Resize to mobile → Button resizes
11. ✓ Open Settings → Can change text
12. ✓ Check console → No errors

Result: _____ / 12 passed
```

---

## 📸 Screenshot Checklist

Capture these for documentation:

### Desktop Screenshots
- [ ] Button on homepage (default state)
- [ ] Button on hover (inverted colors)
- [ ] Button hidden on product page
- [ ] Focus state (keyboard navigation)

### Mobile Screenshots
- [ ] Button on mobile (375px width)
- [ ] Button on small mobile (360px)
- [ ] Touch active state

### Admin Screenshots
- [ ] Settings panel in Theme Settings
- [ ] Each setting field
- [ ] Save success message

---

## ✅ Sign-Off Checklist

Before marking as "tested and approved":

### Functionality
- [ ] Button appears on all non-product pages
- [ ] Button hidden on product pages
- [ ] Button hides near footer
- [ ] Hover effect works
- [ ] Click navigates correctly

### Responsiveness
- [ ] Works on desktop (1920px)
- [ ] Works on tablet (768px)
- [ ] Works on mobile (375px)
- [ ] Works on small mobile (360px)

### Accessibility
- [ ] Keyboard navigable
- [ ] Focus indicators visible
- [ ] Screen reader compatible
- [ ] Reduced motion respected
- [ ] High contrast works

### Admin
- [ ] Enable/disable works
- [ ] Text changes work
- [ ] Link changes work
- [ ] Color changes work
- [ ] Settings save properly

### Analytics
- [ ] GA4 events fire
- [ ] Shopify events tracked
- [ ] No console errors

### Cross-Browser
- [ ] Chrome/Edge
- [ ] Safari
- [ ] Firefox
- [ ] Mobile Safari
- [ ] Samsung Internet (if applicable)

---

## 🎯 Success Criteria

**Test is successful when**:
- ✅ All checkboxes above are checked
- ✅ No console errors
- ✅ Analytics tracking works
- ✅ Mobile experience is smooth
- ✅ Settings are user-friendly

---

## 📞 Report Issues

If you find issues during testing:

1. **Document**:
   - What you did
   - What you expected
   - What actually happened
   - Screenshot/video if possible

2. **Check**:
   - Browser console for errors
   - Network tab for failed requests
   - Shopify error logs

3. **Reference**:
   - PEV_DOCUMENTATION.md → Troubleshooting
   - AUDIT_REPORT_NOV_2025.md → Known Issues

---

**Testing Guide Version**: 1.0  
**Created**: November 21, 2025  
**Last Updated**: November 21, 2025

---

*This guide should be used for every deployment to ensure consistent quality.*

