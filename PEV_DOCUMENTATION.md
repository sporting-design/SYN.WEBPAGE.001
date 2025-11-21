# 🎯 Persistent Engagement Vector (PEV) - Complete Documentation

## Overview

The **Persistent Engagement Vector (PEV)** is a sophisticated floating call-to-action button system designed to maximize user engagement and conversions across the Synapex e-commerce store.

---

## 📍 What It Does

- **Floating CTA Button**: Always visible at the bottom center of the screen
- **Intelligent Hiding**: Automatically hidden on product pages and when near footer
- **Fully Customizable**: All settings controllable via Shopify Admin (no code required)
- **Analytics Ready**: Integrated tracking for GA4 and Shopify Analytics
- **Performance Optimized**: Uses RequestAnimationFrame for smooth 60fps scrolling

---

## 🎨 Shopify Admin Configuration

### Access Path
```
Shopify Admin 
  → Online Store 
    → Themes 
      → Customize 
        → Theme Settings 
          → ⚡ Floating CTA Button (PEV)
```

### Available Settings

| Setting | Type | Default | Description |
|---------|------|---------|-------------|
| **Enable Floating Button** | Toggle | `true` | Master on/off switch |
| **Button Text** | Text | `"SHOP THE STANDARD"` | Text displayed on button |
| **Button Link** | URL | `/collections/all` | Destination when clicked |
| **Background Color** | Color | `#FFFFFF` | Button background (inverts on hover) |
| **Text & Border Color** | Color | `#000000` | Text and border (inverts on hover) |

---

## 🧠 Intelligent Behavior

### Automatic Hiding Conditions

1. **Product Pages**: Hidden to avoid competing with product CTAs
2. **Near Footer**: Hides when scrolling within 150px of footer
3. **Manual Override**: Can be disabled via Theme Settings

### Visual States

- **Default**: White background, black text/border
- **Hover**: Colors invert + lifts 4px with enhanced shadow
- **Active**: Subtle press animation
- **Focus**: Keyboard-accessible with visible focus ring

---

## 📱 Responsive Design

### Breakpoints

| Device | Max Width | Font Size | Padding | Bottom Offset |
|--------|-----------|-----------|---------|---------------|
| Desktop | >768px | 0.75rem | 0.5rem 1rem | 20px |
| Tablet | ≤768px | 0.6875rem | 0.4375rem 0.875rem | 16px |
| Mobile | ≤480px | 0.625rem | 0.375rem 0.75rem | 12px |
| Small Mobile | ≤360px | 0.5625rem | 0.3125rem 0.625rem | 10px |

---

## ♿ Accessibility Features

✅ **WCAG AA Compliant**
- Keyboard navigable
- Focus-visible styling
- ARIA labels
- High contrast mode support
- Reduced motion support
- Screen reader friendly

---

## 📊 Analytics Tracking

### Google Analytics 4 (GA4)

```javascript
{
  event: 'pev_click',
  event_category: 'engagement',
  event_label: 'floating_cta',
  pev_location: 'index',
  pev_text: 'SHOP THE STANDARD',
  pev_url: '/collections/all'
}
```

### Shopify Analytics

```javascript
ShopifyAnalytics.lib.track('PEV Click', {
  template: 'index',
  buttonText: 'SHOP THE STANDARD'
});
```

---

## 🔧 Technical Architecture

### File Locations

```
layout/theme.liquid (lines 79-290)
  ├── HTML Structure (lines 85-95)
  ├── CSS Styling (lines 97-195)
  └── JavaScript Logic (lines 197-254)

config/settings_schema.json (lines 2244-2280)
  └── Admin UI Configuration
```

### CSS Custom Properties

```css
:root {
  --pev-bg: #FFFFFF;
  --pev-text: #000000;
  --pev-border-width: 2px;
  --pev-border-radius: 50px;
  --pev-shadow: 0 8px 24px rgba(0, 0, 0, 0.2);
  --pev-shadow-hover: 0 12px 32px rgba(0, 0, 0, 0.4);
  --pev-shadow-active: 0 4px 16px rgba(0, 0, 0, 0.3);
  --pev-transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
  --pev-z-index: 999;
}
```

---

## 🚀 Performance Optimization

### Scroll Performance
- **RequestAnimationFrame**: Smooth 60fps scrolling
- **Passive Event Listeners**: No scroll blocking
- **Throttling**: Prevents excessive calculations
- **Will-change**: GPU acceleration for transforms

### Load Performance
- **Inline Critical CSS**: No external stylesheet required
- **Minimal JavaScript**: <2KB gzipped
- **No Dependencies**: Pure vanilla JavaScript

---

## 🎭 Brand Integration

### The Synapex Symbol
The PEV uses the distinctive `≠` (not equal) symbol as the brand icon, representing Synapex's positioning as "not standard" kinesiology tape.

### Color Inversion Effect
On hover, the button performs a complete color inversion (black/white swap), creating a distinctive "tactical flip" that reinforces the brand's bold, performance-oriented identity.

---

## 🧪 Testing Checklist

### Functionality Tests
- [ ] Button appears on homepage
- [ ] Button hidden on product pages
- [ ] Button hidden when scrolling to footer
- [ ] Button reappears when scrolling up
- [ ] Click navigates to correct URL
- [ ] Analytics events fire correctly

### Visual Tests
- [ ] Correct colors applied
- [ ] Hover effect works
- [ ] Active press feedback works
- [ ] Focus ring visible on keyboard nav
- [ ] Responsive sizing on mobile

### Accessibility Tests
- [ ] Tab-navigable
- [ ] Screen reader announces correctly
- [ ] High contrast mode works
- [ ] Reduced motion respected

---

## 🐛 Troubleshooting

### Button Not Appearing
1. Check Theme Settings → Enable toggle is ON
2. Verify not on product page (intentional hide)
3. Check browser console for errors
4. Clear theme cache

### Colors Not Updating
1. Save settings in Shopify Admin
2. Hard refresh browser (Cmd+Shift+R / Ctrl+Shift+F5)
3. Check CSS variables in DevTools

### Analytics Not Tracking
1. Verify GTM/GA4 installed
2. Check `window.dataLayer` exists in console
3. Test in GA4 Debug Mode
4. Check Shopify Analytics settings

---

## 🔄 Update History

### Version 2.0 (Current - November 2025)
- ✅ Consolidated duplicate settings schemas
- ✅ Added CSS custom properties
- ✅ Enhanced accessibility (WCAG AA)
- ✅ Improved analytics tracking
- ✅ Added reduced motion support
- ✅ Better responsive breakpoints
- ✅ Performance optimizations
- ✅ Comprehensive documentation

### Version 1.0 (Initial)
- Basic floating button
- Manual color settings
- Simple scroll hiding

---

## 📞 Support & Customization

For advanced customization beyond Shopify Admin controls, modify:

**CSS**: `layout/theme.liquid` lines 97-195
**JavaScript**: `layout/theme.liquid` lines 197-254
**Settings**: `config/settings_schema.json` lines 2244-2280

---

## 🎓 Best Practices

### Recommended Settings
- **Text**: Keep under 20 characters for mobile
- **Colors**: Maintain 4.5:1 contrast ratio minimum
- **Link**: Direct to highest-converting collection
- **Testing**: Always test on real devices

### Performance Tips
- Don't modify scroll event logic
- Keep inline CSS/JS for critical rendering path
- Test on slow 3G network
- Monitor Core Web Vitals

---

## 📝 License & Credits

**Built for**: Synapex Store
**Architecture**: Persistent Engagement Vector System
**Design Philosophy**: Tactical minimalism with maximum impact

---

*Last Updated: November 21, 2025*
*Documentation Version: 2.0*

