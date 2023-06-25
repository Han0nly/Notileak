.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompatKitKat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLiveRegion(Ljava/lang/Object;)I
    .locals 3

    .line 26
    move-object v1, p0

    .line 26
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 26
    move-object v0, v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getLiveRegion()I

    move-result v2

    return v2
.end method

.method public static setLiveRegion(Ljava/lang/Object;I)V
    .locals 2

    .line 30
    move-object v1, p0

    .line 30
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 30
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLiveRegion(I)V

    .line 31
    return-void
.end method
