.class Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplBase;
.super Ljava/lang/Object;
.source "ScrollerCompat.java"

# interfaces
.implements Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/ScrollerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScrollerCompatImplBase"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abortAnimation(Ljava/lang/Object;)V
    .locals 2

    .line 112
    move-object v1, p1

    .line 112
    check-cast v1, Landroid/widget/Scroller;

    .line 112
    move-object v0, v1

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 113
    return-void
.end method

.method public computeScrollOffset(Ljava/lang/Object;)Z
    .locals 3

    .line 84
    move-object v1, p1

    .line 84
    check-cast v1, Landroid/widget/Scroller;

    .line 84
    move-object v0, v1

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    return v2
.end method

.method public createScroller(Landroid/content/Context;Landroid/view/animation/Interpolator;)Ljava/lang/Object;
    .locals 1

    if-eqz p2, :cond_0

    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public fling(Ljava/lang/Object;IIIIIIII)V
    .locals 11

    move-object v10, p1

    check-cast v10, Landroid/widget/Scroller;

    move-object v9, v10

    move-object v0, v9

    move v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 102
    return-void
.end method

.method public fling(Ljava/lang/Object;IIIIIIIIII)V
    .locals 11

    move-object v10, p1

    check-cast v10, Landroid/widget/Scroller;

    move-object v9, v10

    move-object v0, v9

    move v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 108
    return-void
.end method

.method public getCurrVelocity(Ljava/lang/Object;)F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrX(Ljava/lang/Object;)I
    .locals 3

    .line 69
    move-object v1, p1

    .line 69
    check-cast v1, Landroid/widget/Scroller;

    .line 69
    move-object v0, v1

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    return v2
.end method

.method public getCurrY(Ljava/lang/Object;)I
    .locals 3

    .line 74
    move-object v1, p1

    .line 74
    check-cast v1, Landroid/widget/Scroller;

    .line 74
    move-object v0, v1

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    return v2
.end method

.method public getFinalX(Ljava/lang/Object;)I
    .locals 3

    .line 134
    move-object v1, p1

    .line 134
    check-cast v1, Landroid/widget/Scroller;

    .line 134
    move-object v0, v1

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v2

    return v2
.end method

.method public getFinalY(Ljava/lang/Object;)I
    .locals 3

    .line 139
    move-object v1, p1

    .line 139
    check-cast v1, Landroid/widget/Scroller;

    .line 139
    move-object v0, v1

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v2

    return v2
.end method

.method public isFinished(Ljava/lang/Object;)Z
    .locals 3

    .line 64
    move-object v1, p1

    .line 64
    check-cast v1, Landroid/widget/Scroller;

    .line 64
    move-object v0, v1

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    return v2
.end method

.method public isOverScrolled(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public notifyHorizontalEdgeReached(Ljava/lang/Object;III)V
    .locals 0

    .line 119
    return-void
.end method

.method public notifyVerticalEdgeReached(Ljava/lang/Object;III)V
    .locals 0

    .line 124
    return-void
.end method

.method public startScroll(Ljava/lang/Object;IIII)V
    .locals 2

    .line 89
    move-object v1, p1

    .line 89
    check-cast v1, Landroid/widget/Scroller;

    .line 89
    move-object v0, v1

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 90
    return-void
.end method

.method public startScroll(Ljava/lang/Object;IIIII)V
    .locals 8

    move-object v7, p1

    check-cast v7, Landroid/widget/Scroller;

    move-object v6, v7

    move-object v0, v6

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 96
    return-void
.end method
