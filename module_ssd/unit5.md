---
layout: default
title: "Unit 5"
parent: "Module: Secure Software Development"
nav_order: 7
---

## An Introduction to Testing

### Unit Tests.
This extract is from the group project we are working on. The below code shows a `unittest` that is testing if a page within our application can be viewed and if the correct template is being used. 

Such a test is useful especially when automated, this is because if for example, the template is changed, the test will fail thus drawing a developers' attention to either update the test, or fix the changed template.

```py
class CanViewSitePages(BaseViewsTest):
    """
    Tests that the site pages can be viewed.
    """

    def test_can_view_homeview(self):
        url = reverse("homeview")
        response = self.client.get(url)
        self.assertEqual(response.status_code, 200)
        self.assertTemplateUsed(response, "homeview/home.html")
```

### Exploring the Cyclomatic Complexity’s Relevance Today
The Cyclomatic Complexity is commonly considered in modules on testing the validity of code design today. However, in your opinion, should it be? Does it remain relevant today? Specific to the focus of this module, is it relevant in our quest to develop secure software? Justify all opinions which support your argument and share your responses with your team.

### Discussion

In my opinion I think that Cyclomatic Complexity is not too relevant today. We can develop secure, maintainable and testable software without the need to worry about an arbitrary measurement metric. By following principles like SOLID, developers can are "free" to create software that follows programmings best practices without having to calculate Cyclomatic Complexity(brainhub.eu, n.d.).


**References**:

brainhub.eu. (n.d.). Streamlining the Code: Pros and Cons of Cyclomatic Complexity. Available at: https://brainhub.eu/library/measuring-cyclomatic-complexity [Accessed 20 Jun. 2023].

‌