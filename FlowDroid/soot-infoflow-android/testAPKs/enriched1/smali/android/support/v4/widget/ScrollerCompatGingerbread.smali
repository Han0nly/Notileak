.class Landroid/support/v4/widget/ScrollerCompatGingerbread;
.super Ljava/lang/Object;
.source "ScrollerCompatGingerbread.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abortAnimation(Ljava/lang/Object;)V
    .locals 2

    .line 67
    move-object v1, p0

    .line 67
    check-cast v1, Landroid/widget/OverScroller;

    .line 67
    move-object v0, v1

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 68
    return-void
.end method

.method public static computeScrollOffset(Ljava/lang/Object;)Z
    .locals 3

    .line 43
    move-object v1, p0

    .line 43
    check-cast v1, Landroid/widget/OverScroller;

    .line 43
    move-object v0, v1

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v2

    return v2
.end method

.method public static createScroller(Landroid/content/Context;Landroid/view/animation/Interpolator;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static fling(Ljava/lang/Object;IIIIIIII)V
    .locals 11

    move-object v10, p0

    check-cast v10, Landroid/widget/OverScroller;

    move-object v9, v10

    move-object v0, v9

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 58
    return-void
.end method

.method public static fling(Ljava/lang/Object;IIIIIIIIII)V
    .locals 13

    move-object v12, p0

    check-cast v12, Landroid/widget/OverScroller;

    move-object v11, v12

    move-object v0, v11

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 64
    return-void
.end method

.method public static getCurrX(Ljava/lang/Object;)I
    .locals 3

    .line 35
    move-object v1, p0

    .line 35
    check-cast v1, Landroid/widget/OverScroller;

    .line 35
    move-object v0, v1

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v2

    return v2
.end method

.method public static getCurrY(Ljava/lang/Object;)I
    .locals 3

    .line 39
    move-object v1, p0

    .line 39
    check-cast v1, Landroid/widget/OverScroller;

    .line 39
    move-object v0, v1

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v2

    return v2
.end method

.method public static getFinalX(Ljava/lang/Object;)I
    .locals 3

    .line 84
    move-object v1, p0

    .line 84
    check-cast v1, Landroid/widget/OverScroller;

    .line 84
    move-object v0, v1

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v2

    return v2
.end method

.method public static getFinalY(Ljava/lang/Object;)I
    .locals 3

    .line 88
    move-object v1, p0

    .line 88
    check-cast v1, Landroid/widget/OverScroller;

    .line 88
    move-object v0, v1

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v2

    return v2
.end method

.method public static isFinished(Ljava/lang/Object;)Z
    .locals 3

    .line 31
    move-object v1, p0

    .line 31
    check-cast v1, Landroid/widget/OverScroller;

    .line 31
    move-object v0, v1

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    return v2
.end method

.method public static isOverScrolled(Ljava/lang/Object;)Z
    .locals 3

    .line 80
    move-object v1, p0

    .line 80
    check-cast v1, Landroid/widget/OverScroller;

    .line 80
    move-object v0, v1

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isOverScrolled()Z

    move-result v2

    return v2
.end method

.method public static notifyHorizontalEdgeReached(Ljava/lang/Object;III)V
    .locals 2

    .line 72
    move-object v1, p0

    .line 72
    check-cast v1, Landroid/widget/OverScroller;

    .line 72
    move-object v0, v1

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/OverScroller;->notifyHorizontalEdgeReached(III)V

    .line 73
    return-void
.end method

.method public static notifyVerticalEdgeReached(Ljava/lang/Object;III)V
    .locals 2

    .line 76
    move-object v1, p0

    .line 76
    check-cast v1, Landroid/widget/OverScroller;

    .line 76
    move-object v0, v1

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/OverScroller;->notifyVerticalEdgeReached(III)V

    .line 77
    return-void
.end method

.method public static startScroll(Ljava/lang/Object;IIII)V
    .locals 2

    .line 47
    move-object v1, p0

    .line 47
    check-cast v1, Landroid/widget/OverScroller;

    .line 47
    move-object v0, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 48
    return-void
.end method

.method public static startScroll(Ljava/lang/Object;IIIII)V
    .locals 8

    move-object v7, p0

    check-cast v7, Landroid/widget/OverScroller;

    move-object v6, v7

    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 53
    return-void
.end method
