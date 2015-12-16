#CSS Selectors

### Selectors

A CSS selector is the part of a CSS rule set that actually selects the content you want to style.

```
.red-background { ## This is the selector.
  /* CSS declaration goes here */
}
```

### Selector Specificity

Specificity is the means by which a browser decides which CSS property values are the most relevant to an element and therefore will be applied. For instance, instead of using `p`, which selects all `p` elements, the selector can be made more specific by indicating which p element should be selected: `p.awesomeClass`.

**Warning:** Using the `*` universal selector can lead to styling being applied to unwanted elements, making code hard to maintain and debug.

# HTML Attributes

Attributes provide additional information about HTML elements. For example, an <code>href</code> attribute provides address information for links. They are always specified in the **start tag**, i.e. the beginning tag of the HTML element. For example: `<a href="www.imanattributevalue.com"></a>`.

### CSS Attribute Selectors

When selecting an element with a specific attribute in CSS, the attribute name and value should be surrounded in square brackets and the value should be in quotes. For example:
```
li[id="thirdListItem"] {
  /* CSS property-value pairs go here. */
}
```

#Helpful Links

Here are a few of our most helpful cheat-sheets that have LOTS of good information should you get stuck.

### CSS SELECTORS

​* This cheat-sheet has good information on the **TYPES** of selectors available to use for styling.
https://developer.mozilla.org/en-US/docs/Web/Guide/CSS/Getting_started/Selectors

### CSS PROPERTIES
* This is a great visual chart broken up into main catagories of properties. 
http://www.smashingmagazine.com/wp-content/uploads/images/css3-cheat-sheet/css3-cheat-sheet.pdf

### CSS SELECTOR SPECIFICITY
* This link shows you how to target a single element.
https://developer.mozilla.org/en-US/docs/Web/CSS/Specificity

### CSS HTML ATTRIBUTE SELECTORS
* This cheat-sheet helps you chose the right selector to target the HTML you want to style.
https://developer.mozilla.org/en-US/docs/Web/CSS/Attribute_selectors
