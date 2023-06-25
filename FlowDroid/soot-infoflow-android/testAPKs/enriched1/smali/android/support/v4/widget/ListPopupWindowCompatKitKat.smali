.class Landroid/support/v4/widget/ListPopupWindowCompatKitKat;
.super Ljava/lang/Object;
.source "ListPopupWindowCompatKitKat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDragToOpenListener(Ljava/lang/Object;Landroid/view/View;)Landroid/view/View$OnTouchListener;
    .locals 3

    .line 28
    move-object v1, p0

    .line 28
    check-cast v1, Landroid/widget/ListPopupWindow;

    .line 28
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->createDragToOpenListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;

    move-result-object v2

    return-object v2
.end method
