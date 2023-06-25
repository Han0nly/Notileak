.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatJellyBean;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompatJellyBean.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addChild(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 2

    .line 29
    move-object v1, p0

    .line 29
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 29
    move-object v0, v1

    invoke-virtual {v0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 30
    return-void
.end method

.method public static findFocus(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2

    .line 61
    move-object v1, p0

    .line 61
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 61
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static focusSearch(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2

    .line 65
    move-object v1, p0

    .line 65
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 65
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->focusSearch(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getMovementGranularities(Ljava/lang/Object;)I
    .locals 3

    .line 53
    move-object v1, p0

    .line 53
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 53
    move-object v0, v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getMovementGranularities()I

    move-result v2

    return v2
.end method

.method public static isAccessibilityFocused(Ljava/lang/Object;)Z
    .locals 3

    .line 73
    move-object v1, p0

    .line 73
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 73
    move-object v0, v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result v2

    return v2
.end method

.method public static isVisibleToUser(Ljava/lang/Object;)Z
    .locals 3

    .line 37
    move-object v1, p0

    .line 37
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 37
    move-object v0, v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v2

    return v2
.end method

.method public static obtain(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1

    .line 57
    invoke-static {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static performAction(Ljava/lang/Object;ILandroid/os/Bundle;)Z
    .locals 3

    .line 45
    move-object v1, p0

    .line 45
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 45
    move-object v0, v1

    invoke-virtual {v0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(ILandroid/os/Bundle;)Z

    move-result v2

    return v2
.end method

.method public static setAccesibilityFocused(Ljava/lang/Object;Z)V
    .locals 2

    .line 77
    move-object v1, p0

    .line 77
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 77
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 78
    return-void
.end method

.method public static setMovementGranularities(Ljava/lang/Object;I)V
    .locals 2

    .line 49
    move-object v1, p0

    .line 49
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 49
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    .line 50
    return-void
.end method

.method public static setParent(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 2

    .line 69
    move-object v1, p0

    .line 69
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 69
    move-object v0, v1

    invoke-virtual {v0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    .line 70
    return-void
.end method

.method public static setSource(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 2

    .line 33
    move-object v1, p0

    .line 33
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 33
    move-object v0, v1

    invoke-virtual {v0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 34
    return-void
.end method

.method public static setVisibleToUser(Ljava/lang/Object;Z)V
    .locals 2

    .line 41
    move-object v1, p0

    .line 41
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 41
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 42
    return-void
.end method
