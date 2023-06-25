.class Landroid/support/v4/view/ViewPager$ViewPositionComparator;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewPositionComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2879
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .locals 10

    .line 2882
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/support/v4/view/ViewPager$LayoutParams;

    move-object v1, v2

    .line 2883
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/support/v4/view/ViewPager$LayoutParams;

    move-object v3, v4

    .line 2884
    iget-boolean v5, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    iget-boolean v6, v3, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-eq v5, v6, :cond_1

    .line 2885
    iget-boolean v6, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v6, :cond_0

    .line 2885
    const/4 v7, 0x1

    .line 2887
    return v7

    .line 2885
    :cond_0
    const/4 v7, -0x1

    return v7

    .line 2887
    :cond_1
    iget v8, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->position:I

    iget v9, v3, Landroid/support/v4/view/ViewPager$LayoutParams;->position:I

    sub-int/2addr v8, v9

    return v8
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    .line 2879
    move-object v1, p1

    .line 2879
    check-cast v1, Landroid/view/View;

    .line 2879
    move-object v0, v1

    move-object v3, p2

    check-cast v3, Landroid/view/View;

    move-object v2, v3

    invoke-virtual {p0, v0, v2}, Landroid/support/v4/view/ViewPager$ViewPositionComparator;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result v4

    return v4
.end method
