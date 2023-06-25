.class public Landroid/support/v4/widget/ViewDragHelper;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/ViewDragHelper$Callback;
    }
.end annotation


# static fields
.field private static final BASE_SETTLE_DURATION:I = 0x100

.field public static final DIRECTION_ALL:I = 0x3

.field public static final DIRECTION_HORIZONTAL:I = 0x1

.field public static final DIRECTION_VERTICAL:I = 0x2

.field public static final EDGE_ALL:I = 0xf

.field public static final EDGE_BOTTOM:I = 0x8

.field public static final EDGE_LEFT:I = 0x1

.field public static final EDGE_RIGHT:I = 0x2

.field private static final EDGE_SIZE:I = 0x14

.field public static final EDGE_TOP:I = 0x4

.field public static final INVALID_POINTER:I = -0x1

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewDragHelper"

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivePointerId:I

.field private final mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

.field private mCapturedView:Landroid/view/View;

.field private mDragState:I

.field private mEdgeDragsInProgress:[I

.field private mEdgeDragsLocked:[I

.field private mEdgeSize:I

.field private mInitialEdgesTouched:[I

.field private mInitialMotionX:[F

.field private mInitialMotionY:[F

.field private mLastMotionX:[F

.field private mLastMotionY:[F

.field private mMaxVelocity:F

.field private mMinVelocity:F

.field private final mParentView:Landroid/view/ViewGroup;

.field private mPointersDown:I

.field private mReleaseInProgress:Z

.field private mScroller:Landroid/support/v4/widget/ScrollerCompat;

.field private final mSetIdleRunnable:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTrackingEdges:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 326
    new-instance v0, Landroid/support/v4/widget/ViewDragHelper$1;

    invoke-direct {v0}, Landroid/support/v4/widget/ViewDragHelper$1;-><init>()V

    sput-object v0, Landroid/support/v4/widget/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)V
    .locals 14

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    .line 333
    new-instance v2, Landroid/support/v4/widget/ViewDragHelper$2;

    invoke-direct {v2, p0}, Landroid/support/v4/widget/ViewDragHelper$2;-><init>(Landroid/support/v4/widget/ViewDragHelper;)V

    iput-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    if-nez p2, :cond_0

    .line 375
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 375
    const-string v4, "Parent view may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    if-nez p3, :cond_1

    .line 378
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 378
    const-string v4, "Callback may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    move-object/from16 v0, p2

    .line 381
    iput-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    move-object/from16 v0, p3

    .line 382
    iput-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    .line 384
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    .line 385
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v8, v7, Landroid/util/DisplayMetrics;->density:F

    const v10, 0x41a00000    # 20.0f

    mul-float v9, v10, v8

    const v10, 0x3f000000    # 0.5f

    add-float/2addr v9, v10

    float-to-int v11, v9

    iput v11, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeSize:I

    .line 388
    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v11

    iput v11, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    .line 389
    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v11

    int-to-float v9, v11

    iput v9, p0, Landroid/support/v4/widget/ViewDragHelper;->mMaxVelocity:F

    .line 390
    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v11

    int-to-float v9, v11

    iput v9, p0, Landroid/support/v4/widget/ViewDragHelper;->mMinVelocity:F

    .line 391
    sget-object v12, Landroid/support/v4/widget/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {p1, v12}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v13

    iput-object v13, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    .line 392
    return-void
.end method

.method private checkNewEdgeDrag(FFII)Z
    .locals 8

    .line 1218
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 1219
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 1221
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v1, v0, p3

    and-int/2addr v1, p4

    if-ne v1, p4, :cond_0

    iget v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v1, p4

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    aget v1, v0, p3

    and-int/2addr v1, p4

    if-eq v1, p4, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v1, v0, p3

    and-int/2addr v1, p4

    if-eq v1, p4, :cond_0

    iget v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v2, v1

    cmpg-float v3, p1, v2

    if-gtz v3, :cond_1

    iget v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v2, v1

    cmpg-float v3, p2, v2

    if-gtz v3, :cond_1

    :cond_0
    const/4 v4, 0x0

    .line 1231
    return v4

    :cond_1
    const v5, 0x3f000000    # 0.5f

    mul-float v2, v5, p2

    cmpg-float v3, p1, v2

    if-gez v3, :cond_2

    iget-object v6, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-virtual {v6, p4}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onEdgeLock(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1228
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    aget v1, v0, p3

    or-int/2addr v1, p4

    aput v1, v0, p3

    const/4 v4, 0x0

    return v4

    .line 1231
    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v1, v0, p3

    and-int/2addr v1, p4

    if-nez v1, :cond_0

    iget v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v2, v1

    cmpl-float v3, p1, v2

    if-lez v3, :cond_0

    const/4 v4, 0x1

    return v4
.end method

.method private checkTouchSlop(Landroid/view/View;FF)Z
    .locals 8

    const/4 v0, 0x1

    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 1258
    :cond_0
    return v0

    .line 1248
    :cond_1
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v2

    if-lez v2, :cond_2

    const/4 v3, 0x1

    .line 1249
    :goto_0
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v2

    if-lez v2, :cond_3

    const/4 v4, 0x1

    :goto_1
    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    .line 1252
    mul-float/2addr p2, p2

    mul-float/2addr p3, p3

    add-float p3, p2, p3

    iget v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    iget v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    mul-int/2addr v5, v2

    int-to-float p2, v5

    cmpl-float v6, p3, p2

    if-gtz v6, :cond_0

    const/4 v7, 0x0

    return v7

    :cond_2
    const/4 v3, 0x0

    .line 1248
    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    .line 1249
    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    .line 1254
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p3

    iget v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float p2, v5

    cmpl-float v6, p3, p2

    if-gtz v6, :cond_0

    const/4 v7, 0x0

    return v7

    :cond_5
    if-eqz v4, :cond_6

    .line 1256
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    iget v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float p2, v5

    cmpl-float v6, p3, p2

    if-gtz v6, :cond_0

    const/4 v7, 0x0

    return v7

    :cond_6
    const/4 v7, 0x0

    return v7
.end method

.method private clampMag(FFF)F
    .locals 3

    .line 667
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 668
    cmpg-float v1, v0, p2

    if-gez v1, :cond_1

    const/4 p3, 0x0

    .line 670
    :cond_0
    return p3

    .line 669
    :cond_1
    cmpl-float v1, v0, p3

    if-lez v1, :cond_2

    const/4 v2, 0x0

    cmpl-float v1, p1, v2

    if-gtz v1, :cond_0

    neg-float p3, p3

    return p3

    :cond_2
    return p1
.end method

.method private clampMag(III)I
    .locals 1

    .line 650
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, p2, :cond_1

    const/4 p3, 0x0

    .line 653
    :cond_0
    return p3

    :cond_1
    if-le v0, p3, :cond_2

    if-gtz p1, :cond_0

    neg-int p3, p3

    return p3

    :cond_2
    return p1
.end method

.method private clearMotionHistory()V
    .locals 4

    .line 770
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    if-nez v0, :cond_0

    .line 781
    :goto_0
    return-void

    .line 773
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    .line 773
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 774
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    .line 774
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 775
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    .line 775
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 776
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    .line 776
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 777
    iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    .line 777
    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 778
    iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    .line 778
    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 779
    iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    .line 779
    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 780
    const/4 v3, 0x0

    .line 780
    iput v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mPointersDown:I

    goto :goto_0
.end method

.method private clearMotionHistory(I)V
    .locals 5

    .line 784
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    if-nez v0, :cond_0

    .line 795
    :goto_0
    return-void

    .line 787
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    const/4 v2, 0x0

    int-to-float v1, v2

    aput v1, v0, p1

    .line 788
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    const/4 v2, 0x0

    int-to-float v1, v2

    aput v1, v0, p1

    .line 789
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    const/4 v2, 0x0

    int-to-float v1, v2

    aput v1, v0, p1

    .line 790
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    const/4 v2, 0x0

    int-to-float v1, v2

    aput v1, v0, p1

    .line 791
    iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    const/4 v2, 0x0

    aput v2, v3, p1

    .line 792
    iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    const/4 v2, 0x0

    aput v2, v3, p1

    .line 793
    iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    const/4 v2, 0x0

    aput v2, v3, p1

    .line 794
    iget v4, p0, Landroid/support/v4/widget/ViewDragHelper;->mPointersDown:I

    const/4 v2, 0x1

    shl-int p1, v2, p1

    not-int p1, p1

    and-int/2addr v4, p1

    iput v4, p0, Landroid/support/v4/widget/ViewDragHelper;->mPointersDown:I

    goto :goto_0
.end method

.method private computeAxisDuration(III)I
    .locals 9

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 636
    return v0

    .line 622
    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    .line 623
    div-int/lit8 v3, v2, 0x2

    .line 624
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v5, v4

    int-to-float v6, v2

    div-float/2addr v5, v6

    const v7, 0x3f800000    # 1.0f

    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 625
    int-to-float v5, v3

    int-to-float v8, v3

    invoke-direct {p0, v6}, Landroid/support/v4/widget/ViewDragHelper;->distanceInfluenceForSnapDuration(F)F

    move-result v6

    mul-float/2addr v8, v6

    add-float v6, v5, v8

    .line 629
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-lez v4, :cond_1

    int-to-float v5, v4

    div-float v5, v6, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v7, 0x447a0000    # 1000.0f

    mul-float v8, v7, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v4

    mul-int/lit8 p3, v4, 0x4

    :goto_0
    const/16 v0, 0x258

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    return v4

    .line 633
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v8, v4

    int-to-float v5, p3

    div-float v6, v8, v5

    .line 634
    const v7, 0x3f800000    # 1.0f

    .line 634
    add-float v8, v6, v7

    const v7, 0x43800000    # 256.0f

    mul-float/2addr v8, v7

    float-to-int p3, v8

    goto :goto_0
.end method

.method private computeSettleDuration(Landroid/view/View;IIII)I
    .locals 10

    .line 597
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mMinVelocity:F

    float-to-int v1, v0

    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mMaxVelocity:F

    float-to-int v2, v0

    invoke-direct {p0, p4, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->clampMag(III)I

    move-result v3

    .line 598
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mMinVelocity:F

    float-to-int v1, v0

    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mMaxVelocity:F

    float-to-int v2, v0

    invoke-direct {p0, p5, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->clampMag(III)I

    move-result v4

    .line 599
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p5

    .line 600
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p4

    .line 601
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 602
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 603
    add-int v1, v5, v6

    .line 604
    add-int v2, p5, p4

    if-eqz v3, :cond_0

    int-to-float v0, v5

    int-to-float v7, v1

    div-float v7, v0, v7

    :goto_0
    if-eqz v4, :cond_1

    int-to-float v0, v6

    int-to-float v8, v1

    div-float/2addr v0, v8

    .line 611
    :goto_1
    iget-object v9, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-virtual {v9, p1}, Landroid/support/v4/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v1

    invoke-direct {p0, p2, v3, v1}, Landroid/support/v4/widget/ViewDragHelper;->computeAxisDuration(III)I

    move-result v1

    .line 612
    iget-object v9, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-virtual {v9, p1}, Landroid/support/v4/widget/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v3

    invoke-direct {p0, p3, v4, v3}, Landroid/support/v4/widget/ViewDragHelper;->computeAxisDuration(III)I

    move-result v2

    .line 614
    int-to-float v8, v1

    mul-float/2addr v8, v7

    int-to-float v7, v2

    mul-float v0, v7, v0

    add-float/2addr v8, v0

    float-to-int v4, v8

    return v4

    .line 606
    :cond_0
    int-to-float v8, p5

    int-to-float v0, v2

    div-float v7, v8, v0

    goto :goto_0

    .line 608
    :cond_1
    int-to-float v8, p4

    int-to-float v0, v2

    div-float v0, v8, v0

    goto :goto_1
.end method

.method public static create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;
    .locals 5

    .line 360
    invoke-static {p0, p2}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v0

    .line 361
    iget v1, v0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v2, v1

    const v4, 0x3f800000    # 1.0f

    div-float v3, v4, p1

    mul-float/2addr v2, v3

    float-to-int v1, v2

    iput v1, v0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    .line 362
    return-object v0
.end method

.method public static create(Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;
    .locals 2

    .line 347
    new-instance v0, Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Landroid/support/v4/widget/ViewDragHelper;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)V

    return-object v0
.end method

.method private dispatchViewReleased(FF)V
    .locals 5

    .line 759
    const/4 v0, 0x1

    .line 759
    iput-boolean v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mReleaseInProgress:Z

    .line 760
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1, v2, p1, p2}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    .line 761
    const/4 v0, 0x0

    .line 761
    iput-boolean v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mReleaseInProgress:Z

    .line 763
    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    const/4 v0, 0x1

    move v4, v0

    if-ne v3, v4, :cond_0

    const/4 v0, 0x0

    move v4, v0

    .line 765
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/ViewDragHelper;->setDragState(I)V

    .line 767
    :cond_0
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 6

    const v1, 0x3f000000    # 0.5f

    sub-float v0, p1, v1

    .line 675
    float-to-double v2, v0

    const-wide v4, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v2, v4

    double-to-float v0, v2

    .line 676
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v0, v2

    return v0
.end method

.method private dragTo(IIII)V
    .locals 12

    .line 1366
    move v6, p1

    .line 1367
    move v7, p2

    .line 1368
    iget-object v8, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 1369
    iget-object v8, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v10

    if-eqz p3, :cond_0

    .line 1371
    iget-object v11, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    iget-object v8, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v11, v8, p1, p3}, Landroid/support/v4/widget/ViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result v6

    .line 1372
    iget-object v8, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int p1, v6, v9

    invoke-virtual {v8, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_0
    if-eqz p4, :cond_1

    .line 1375
    iget-object v11, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    iget-object v8, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move/from16 v0, p4

    invoke-virtual {v11, v8, p2, v0}, Landroid/support/v4/widget/ViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result v7

    .line 1376
    iget-object v8, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int p2, v7, v10

    invoke-virtual {v8, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_1
    if-nez p3, :cond_2

    if-eqz p4, :cond_3

    .line 1380
    :cond_2
    sub-int p4, v6, v9

    .line 1381
    sub-int p3, v7, v10

    .line 1382
    iget-object v11, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    iget-object v8, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object v0, v11

    move-object v1, v8

    move v2, v6

    move v3, v7

    move/from16 v4, p4

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 1385
    :cond_3
    return-void
.end method

.method private ensureMotionHistorySizeForId(I)V
    .locals 14

    .line 798
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    array-length v2, v1

    if-gt v2, p1, :cond_2

    .line 799
    :cond_0
    add-int/lit8 v2, p1, 0x1

    new-array v3, v2, [F

    .line 800
    add-int/lit8 v2, p1, 0x1

    new-array v4, v2, [F

    .line 801
    add-int/lit8 v2, p1, 0x1

    new-array v5, v2, [F

    .line 802
    add-int/lit8 v2, p1, 0x1

    new-array v0, v2, [F

    .line 803
    add-int/lit8 v2, p1, 0x1

    new-array v6, v2, [I

    .line 804
    add-int/lit8 v2, p1, 0x1

    new-array v7, v2, [I

    .line 805
    add-int/lit8 v2, p1, 0x1

    new-array v8, v2, [I

    .line 807
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v1, :cond_1

    .line 808
    iget-object v9, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    array-length v2, v1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v3, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 809
    iget-object v9, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    array-length v2, v1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v4, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 810
    iget-object v9, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    array-length v2, v1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v5, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 811
    iget-object v9, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    array-length v2, v1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v0, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 812
    iget-object v12, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    iget-object v13, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    array-length v2, v13

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v12, v10, v6, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 813
    iget-object v13, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    iget-object v12, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    array-length v2, v12

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v13, v10, v7, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 814
    iget-object v13, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    iget-object v12, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    array-length v2, v12

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v13, v10, v8, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 817
    :cond_1
    iput-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    .line 818
    iput-object v4, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    .line 819
    iput-object v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    .line 820
    iput-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    .line 821
    iput-object v6, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    .line 822
    iput-object v7, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    .line 823
    iput-object v8, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    .line 825
    :cond_2
    return-void
.end method

.method private forceSettleCapturedViewAt(IIII)Z
    .locals 12

    .line 577
    iget-object v6, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 578
    iget-object v6, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v8

    .line 579
    sub-int/2addr p1, v7

    .line 580
    sub-int/2addr p2, v8

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 584
    iget-object v9, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v9}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 584
    const/4 v10, 0x0

    .line 585
    invoke-virtual {p0, v10}, Landroid/support/v4/widget/ViewDragHelper;->setDragState(I)V

    .line 584
    const/4 v10, 0x0

    .line 593
    return v10

    .line 589
    :cond_0
    iget-object v6, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object v0, p0

    move-object v1, v6

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/widget/ViewDragHelper;->computeSettleDuration(Landroid/view/View;IIII)I

    move-result v11

    .line 590
    iget-object v9, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    move-object v0, v9

    move v1, v7

    move v2, v8

    move v3, p1

    move v4, p2

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/ScrollerCompat;->startScroll(IIIII)V

    .line 590
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Landroid/support/v4/widget/ViewDragHelper;->setDragState(I)V

    .line 590
    const/4 v10, 0x1

    return v10
.end method

.method private getEdgesTouched(II)I
    .locals 5

    .line 1440
    const/4 v0, 0x0

    .line 1442
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeSize:I

    add-int/2addr v2, v3

    if-ge p1, v2, :cond_0

    const/4 v4, 0x0

    const/4 v4, 0x1

    or-int v0, v4, v4

    .line 1443
    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeSize:I

    add-int/2addr v2, v3

    if-ge p2, v2, :cond_1

    const/4 v4, 0x4

    or-int/2addr v0, v4

    .line 1444
    :cond_1
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeSize:I

    sub-int/2addr v2, v3

    if-le p1, v2, :cond_2

    const/4 v4, 0x2

    or-int/2addr v0, v4

    .line 1445
    :cond_2
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v2

    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeSize:I

    sub-int/2addr v2, v3

    if-le p2, v2, :cond_3

    const/16 v4, 0x8

    or-int/2addr v0, v4

    .line 1447
    :cond_3
    return v0
.end method

.method private releaseViewForPointerUp()V
    .locals 7

    .line 1355
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mMaxVelocity:F

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1356
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    invoke-static {v0, v3}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v1

    iget v4, p0, Landroid/support/v4/widget/ViewDragHelper;->mMinVelocity:F

    iget v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mMaxVelocity:F

    invoke-direct {p0, v1, v4, v5}, Landroid/support/v4/widget/ViewDragHelper;->clampMag(FFF)F

    move-result v4

    .line 1359
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    invoke-static {v0, v3}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v5

    iget v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mMinVelocity:F

    iget v6, p0, Landroid/support/v4/widget/ViewDragHelper;->mMaxVelocity:F

    invoke-direct {p0, v5, v1, v6}, Landroid/support/v4/widget/ViewDragHelper;->clampMag(FFF)F

    move-result v1

    .line 1362
    invoke-direct {p0, v4, v1}, Landroid/support/v4/widget/ViewDragHelper;->dispatchViewReleased(FF)V

    .line 1363
    return-void
.end method

.method private reportNewEdgeDrags(FFI)V
    .locals 6

    .line 1197
    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, p3, v2}, Landroid/support/v4/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1199
    const/4 v2, 0x0

    .line 1199
    const/4 v2, 0x1

    .line 1199
    or-int v0, v2, v2

    :cond_0
    const/4 v2, 0x4

    invoke-direct {p0, p2, p1, p3, v2}, Landroid/support/v4/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1202
    const/4 v2, 0x4

    .line 1202
    or-int/2addr v0, v2

    :cond_1
    const/4 v2, 0x2

    invoke-direct {p0, p1, p2, p3, v2}, Landroid/support/v4/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1205
    const/4 v2, 0x2

    .line 1205
    or-int/2addr v0, v2

    :cond_2
    const/16 v2, 0x8

    invoke-direct {p0, p2, p1, p3, v2}, Landroid/support/v4/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1208
    const/16 v2, 0x8

    .line 1208
    or-int/2addr v0, v2

    :cond_3
    if-eqz v0, :cond_4

    .line 1212
    iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v4, v3, p3

    or-int/2addr v4, v0

    aput v4, v3, p3

    .line 1213
    iget-object v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-virtual {v5, v0, p3}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onEdgeDragStarted(II)V

    .line 1215
    :cond_4
    return-void
.end method

.method private saveInitialMotion(FFI)V
    .locals 6

    .line 828
    invoke-direct {p0, p3}, Landroid/support/v4/widget/ViewDragHelper;->ensureMotionHistorySizeForId(I)V

    .line 829
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    aput p1, v1, p3

    aput p1, v0, p3

    .line 830
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    aput p2, v0, p3

    aput p2, v1, p3

    .line 831
    iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    float-to-int v3, p1

    float-to-int v4, p2

    invoke-direct {p0, v3, v4}, Landroid/support/v4/widget/ViewDragHelper;->getEdgesTouched(II)I

    move-result v3

    aput v3, v2, p3

    .line 832
    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mPointersDown:I

    const/4 v5, 0x1

    shl-int v4, v5, p3

    or-int/2addr v3, v4

    iput v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mPointersDown:I

    .line 833
    return-void
.end method

.method private saveLastMotion(Landroid/view/MotionEvent;)V
    .locals 6

    .line 836
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v0

    .line 837
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 838
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 839
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 840
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 841
    iget-object v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    aput v3, v5, v2

    .line 842
    iget-object v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    aput v4, v5, v2

    .line 837
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 844
    :cond_0
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 15

    .line 512
    invoke-virtual {p0}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 513
    iget v6, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    .line 513
    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 514
    iget-object v8, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v8}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v9

    .line 515
    iget-object v8, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v8}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v10

    .line 516
    iget-object v8, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v8}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 517
    iget-object v8, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v8}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v6

    .line 518
    iget-object v8, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v8}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v11

    .line 519
    iget-object v12, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    iget-object v13, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v14, v6, v9

    sub-int v9, v11, v10

    move-object v0, v12

    move-object v1, v13

    move v2, v6

    move v3, v11

    move v4, v14

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    :cond_0
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/support/v4/widget/ViewDragHelper;->setDragState(I)V

    .line 522
    return-void
.end method

.method protected canScroll(Landroid/view/View;ZIIII)Z
    .locals 19

    move-object/from16 v0, p1

    instance-of v7, v0, Landroid/view/ViewGroup;

    if-eqz v7, :cond_1

    move-object/from16 v9, p1

    .line 909
    check-cast v9, Landroid/view/ViewGroup;

    .line 909
    move-object v8, v9

    move-object/from16 v0, p1

    .line 910
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v10

    move-object/from16 v0, p1

    .line 911
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v11

    .line 912
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    .line 914
    add-int/lit8 v13, v12, -0x1

    :goto_0
    if-ltz v13, :cond_1

    .line 917
    invoke-virtual {v8, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 918
    add-int v12, p5, v10

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v15

    if-lt v12, v15, :cond_0

    add-int v12, p5, v10

    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v16

    move/from16 v0, v16

    if-ge v12, v0, :cond_0

    add-int v12, p6, v11

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v16

    move/from16 v0, v16

    if-lt v12, v0, :cond_0

    add-int v12, p6, v11

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v16

    move/from16 v0, v16

    if-ge v12, v0, :cond_0

    add-int v12, p5, v10

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v15

    sub-int v16, v12, v15

    add-int v12, p6, v11

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int/2addr v12, v15

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object v1, v14

    move/from16 v2, v17

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, v16

    move v6, v12

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/widget/ViewDragHelper;->canScroll(Landroid/view/View;ZIIII)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v17, 0x1

    .line 927
    return v17

    .line 914
    :cond_0
    add-int/lit8 v13, v13, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    move/from16 v0, p3

    neg-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v7

    if-nez v7, :cond_2

    move/from16 v0, p4

    neg-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    const/16 v17, 0x1

    return v17

    :cond_3
    const/16 v17, 0x0

    return v17
.end method

.method public cancel()V
    .locals 3

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    .line 499
    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper;->clearMotionHistory()V

    .line 501
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_0

    .line 502
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 505
    :cond_0
    return-void
.end method

.method public captureChildView(Landroid/view/View;I)V
    .locals 8

    .line 460
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    if-eq v0, v1, :cond_0

    .line 461
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 465
    :cond_0
    iput-object p1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 466
    iput p2, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    .line 467
    iget-object v6, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-virtual {v6, p1, p2}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewCaptured(Landroid/view/View;I)V

    .line 467
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Landroid/support/v4/widget/ViewDragHelper;->setDragState(I)V

    .line 469
    return-void
.end method

.method public checkTouchSlop(I)Z
    .locals 5

    .line 1276
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    array-length v1, v0

    .line 1277
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1278
    invoke-virtual {p0, p1, v2}, Landroid/support/v4/widget/ViewDragHelper;->checkTouchSlop(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1278
    const/4 v4, 0x1

    .line 1282
    return v4

    .line 1277
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1277
    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method public checkTouchSlop(II)Z
    .locals 11

    const/4 v0, 0x1

    .line 1301
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/ViewDragHelper;->isPointerDown(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 1318
    :cond_0
    return v0

    .line 1305
    :cond_1
    and-int/lit8 v2, p1, 0x1

    const/4 v4, 0x1

    move v3, v4

    if-ne v2, v3, :cond_2

    const/4 v5, 0x1

    .line 1306
    :goto_0
    and-int/lit8 v2, p1, 0x2

    .line 1306
    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    const/4 v1, 0x1

    .line 1308
    :goto_1
    iget-object v6, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    aget v7, v6, p2

    iget-object v6, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    aget v8, v6, p2

    sub-float v8, v7, v8

    .line 1309
    iget-object v6, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    aget v7, v6, p2

    iget-object v6, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    aget v9, v6, p2

    sub-float/2addr v7, v9

    if-eqz v5, :cond_4

    if-eqz v1, :cond_4

    .line 1312
    mul-float v9, v8, v8

    mul-float/2addr v7, v7

    add-float/2addr v9, v7

    iget v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    iget p2, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    mul-int/2addr v2, p2

    int-to-float v7, v2

    cmpl-float v10, v9, v7

    if-gtz v10, :cond_0

    const/4 v4, 0x0

    return v4

    :cond_2
    const/4 v5, 0x0

    .line 1305
    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 1306
    goto :goto_1

    :cond_4
    if-eqz v5, :cond_5

    .line 1314
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v7, v2

    cmpl-float v10, v9, v7

    if-gtz v10, :cond_0

    const/4 v4, 0x0

    return v4

    :cond_5
    if-eqz v1, :cond_6

    .line 1316
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v7, v2

    cmpl-float v10, v9, v7

    if-gtz v10, :cond_0

    const/4 v4, 0x0

    return v4

    :cond_6
    const/4 v4, 0x0

    return v4
.end method

.method public continueSettling(Z)Z
    .locals 17

    move-object/from16 v0, p0

    .line 715
    iget v6, v0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    .line 715
    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    move-object/from16 v0, p0

    .line 716
    iget-object v8, v0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v8}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v9

    move-object/from16 v0, p0

    .line 717
    iget-object v8, v0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v8}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v6

    move-object/from16 v0, p0

    .line 718
    iget-object v8, v0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v8}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v10

    move-object/from16 v0, p0

    .line 719
    iget-object v11, v0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v12

    sub-int v13, v6, v12

    move-object/from16 v0, p0

    .line 720
    iget-object v11, v0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v12

    sub-int v12, v10, v12

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    .line 723
    iget-object v11, v0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v11, v13}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_0
    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    .line 726
    iget-object v11, v0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v11, v12}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_1
    if-nez v13, :cond_2

    if-eqz v12, :cond_3

    :cond_2
    move-object/from16 v0, p0

    .line 730
    iget-object v14, v0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object v0, v14

    move-object v1, v11

    move v2, v6

    move v3, v10

    move v4, v13

    move v5, v12

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    :cond_3
    if-eqz v9, :cond_4

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v8}, Landroid/support/v4/widget/ScrollerCompat;->getFinalX()I

    move-result v12

    if-ne v6, v12, :cond_4

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v8}, Landroid/support/v4/widget/ScrollerCompat;->getFinalY()I

    move-result v12

    if-ne v10, v12, :cond_4

    move-object/from16 v0, p0

    .line 736
    iget-object v8, v0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v8}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    move-object/from16 v0, p0

    .line 737
    iget-object v8, v0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v8}, Landroid/support/v4/widget/ScrollerCompat;->isFinished()Z

    move-result v9

    :cond_4
    if-nez v9, :cond_5

    if-eqz p1, :cond_6

    move-object/from16 v0, p0

    .line 742
    iget-object v15, v0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_0
    move-object/from16 v0, p0

    .line 749
    iget v12, v0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    .line 749
    const/4 v7, 0x2

    if-ne v12, v7, :cond_7

    .line 749
    const/4 v7, 0x1

    return v7

    :cond_6
    const/4 v7, 0x0

    move v12, v7

    move-object/from16 v0, p0

    .line 744
    invoke-virtual {v0, v12}, Landroid/support/v4/widget/ViewDragHelper;->setDragState(I)V

    goto :goto_0

    :cond_7
    const/4 v7, 0x0

    return v7
.end method

.method public findTopChildUnder(II)Landroid/view/View;
    .locals 6

    .line 1428
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1429
    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 1430
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/ViewDragHelper$Callback;->getOrderedChildIndex(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1431
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p2, v3, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge p2, v3, :cond_0

    .line 1436
    return-object v4

    .line 1429
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1429
    :cond_1
    const/4 v5, 0x0

    return-object v5
.end method

.method public flingCapturedView(IIII)V
    .locals 22

    move-object/from16 v0, p0

    .line 690
    iget-boolean v9, v0, Landroid/support/v4/widget/ViewDragHelper;->mReleaseInProgress:Z

    if-nez v9, :cond_0

    .line 691
    new-instance v10, Ljava/lang/IllegalStateException;

    .line 691
    const-string v11, "Cannot flingCapturedView outside of a call to Callback#onViewReleased"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_0
    move-object/from16 v0, p0

    .line 695
    iget-object v12, v0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object v0, v12

    move v1, v14

    move v2, v15

    move/from16 v3, v19

    move/from16 v4, v20

    move/from16 v5, p1

    move/from16 v6, p3

    move/from16 v7, p2

    move/from16 v8, p4

    invoke-virtual/range {v0 .. v8}, Landroid/support/v4/widget/ScrollerCompat;->fling(IIIIIIII)V

    const/16 v21, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->setDragState(I)V

    .line 701
    return-void
.end method

.method public getActivePointerId()I
    .locals 1

    .line 483
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    return v0
.end method

.method public getCapturedView()Landroid/view/View;
    .locals 1

    .line 475
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    return-object v0
.end method

.method public getEdgeSize()I
    .locals 1

    .line 448
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeSize:I

    return v0
.end method

.method public getMinVelocity()F
    .locals 1

    .line 412
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mMinVelocity:F

    return v0
.end method

.method public getTouchSlop()I
    .locals 1

    .line 490
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    return v0
.end method

.method public getViewDragState()I
    .locals 1

    .line 421
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    return v0
.end method

.method public isCapturedViewUnder(II)Z
    .locals 2

    .line 1397
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v1

    return v1
.end method

.method public isEdgeTouched(I)Z
    .locals 5

    .line 1331
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    array-length v1, v0

    .line 1332
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1333
    invoke-virtual {p0, p1, v2}, Landroid/support/v4/widget/ViewDragHelper;->isEdgeTouched(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1333
    const/4 v4, 0x1

    .line 1337
    return v4

    .line 1332
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1332
    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method public isEdgeTouched(II)Z
    .locals 3

    .line 1351
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aget p2, v1, p2

    and-int/2addr p2, p1

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isPointerDown(I)Z
    .locals 2

    .line 860
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isViewUnder(Landroid/view/View;II)Z
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 1413
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p2, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge p2, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    if-lt p3, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    if-ge p3, v1, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method public processTouchEvent(Landroid/view/MotionEvent;)V
    .locals 24

    move-object/from16 v0, p1

    .line 1046
    invoke-static {v0}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v3

    move-object/from16 v0, p1

    .line 1047
    invoke-static {v0}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v4

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    .line 1052
    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v5, :cond_1

    .line 1056
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1194
    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 1194
    :cond_2
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    move-object/from16 v0, p1

    .line 1062
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    move-object/from16 v0, p1

    .line 1063
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v9}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v8

    float-to-int v10, v6

    float-to-int v3, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v3}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v8}, Landroid/support/v4/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v8}, Landroid/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v4, v12, v8

    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v10, v4

    if-eqz v10, :cond_2

    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    and-int/2addr v10, v4

    invoke-virtual {v13, v10, v8}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_0

    :sswitch_2
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v10

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v14

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v6, v10}, Landroid/support/v4/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    if-nez v8, :cond_3

    float-to-int v8, v14

    float-to-int v4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v4}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v10}, Landroid/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v8, v12, v10

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v4, v8

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    and-int v8, v4, v8

    invoke-virtual {v13, v8, v10}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto/16 :goto_0

    :cond_3
    float-to-int v8, v14

    float-to-int v4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v4}, Landroid/support/v4/widget/ViewDragHelper;->isCapturedViewUnder(II)Z

    move-result v15

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v10}, Landroid/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto/16 :goto_0

    :sswitch_3
    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    const/4 v9, 0x1

    if-ne v10, v9, :cond_4

    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-static {v0, v10}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v4

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v16

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    aget v6, v17, v10

    sub-float v16, v16, v6

    move/from16 v0, v16

    float-to-int v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    aget v16, v17, v10

    sub-float v16, v14, v16

    move/from16 v0, v16

    float-to-int v3, v0

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v8

    add-int/2addr v10, v4

    add-int/2addr v8, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v8, v4, v3}, Landroid/support/v4/widget/ViewDragHelper;->dragTo(IIII)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1119
    invoke-direct {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p1

    .line 1122
    invoke-static {v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v3

    .line 1123
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_5

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v10

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v16

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    move-object/from16 v17, v0

    aget v6, v17, v10

    sub-float v7, v16, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    move-object/from16 v17, v0

    aget v6, v17, v10

    sub-float v6, v14, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6, v10}, Landroid/support/v4/widget/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_6

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1142
    invoke-direct {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :cond_6
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v18, v0

    float-to-int v8, v14

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v8}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v7, v6}, Landroid/support/v4/widget/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v15

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v10}, Landroid/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v15

    if-nez v15, :cond_5

    .line 1123
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :sswitch_4
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v18

    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    const/4 v9, 0x1

    if-ne v10, v9, :cond_b

    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    move/from16 v0, v18

    if-ne v0, v10, :cond_b

    .line 1151
    const/4 v3, -0x1

    move-object/from16 v0, p1

    .line 1152
    invoke-static {v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v10

    .line 1153
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v10, :cond_a

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v4, v0, :cond_9

    .line 1153
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_9
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v0, v21

    if-ne v0, v11, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v4}, Landroid/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v15

    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    :cond_a
    const/4 v9, -0x1

    if-ne v3, v9, :cond_b

    move-object/from16 v0, p0

    .line 1171
    invoke-direct {v0}, Landroid/support/v4/widget/ViewDragHelper;->releaseViewForPointerUp()V

    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->clearMotionHistory(I)V

    goto/16 :goto_0

    :sswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    move/from16 v20, v0

    const/4 v9, 0x1

    move/from16 v0, v20

    if-ne v0, v9, :cond_c

    move-object/from16 v0, p0

    .line 1180
    invoke-direct {v0}, Landroid/support/v4/widget/ViewDragHelper;->releaseViewForPointerUp()V

    :cond_c
    move-object/from16 v0, p0

    .line 1182
    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    goto/16 :goto_0

    :sswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    move/from16 v20, v0

    const/4 v9, 0x1

    move/from16 v0, v20

    if-ne v0, v9, :cond_d

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->dispatchViewReleased(FF)V

    :cond_d
    move-object/from16 v0, p0

    .line 1190
    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_5
        0x2 -> :sswitch_3
        0x3 -> :sswitch_6
        0x4 -> :sswitch_0
        0x5 -> :sswitch_2
        0x6 -> :sswitch_4
    .end sparse-switch
.end method

.method setDragState(I)V
    .locals 3

    .line 864
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    if-eq v0, p1, :cond_0

    .line 865
    iput p1, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    .line 866
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewDragStateChanged(I)V

    if-nez p1, :cond_0

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 871
    :cond_0
    return-void
.end method

.method public setEdgeTrackingEnabled(I)V
    .locals 0

    .line 437
    iput p1, p0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    .line 438
    return-void
.end method

.method public setMinVelocity(F)V
    .locals 0

    .line 401
    iput p1, p0, Landroid/support/v4/widget/ViewDragHelper;->mMinVelocity:F

    .line 402
    return-void
.end method

.method public settleCapturedViewAt(II)Z
    .locals 7

    .line 557
    iget-boolean v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mReleaseInProgress:Z

    if-nez v0, :cond_0

    .line 558
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 558
    const-string v2, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 562
    :cond_0
    iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v4, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    invoke-static {v3, v4}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v5

    float-to-int v6, v5

    iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v4, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    invoke-static {v3, v4}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v5

    float-to-int v4, v5

    invoke-direct {p0, p1, p2, v6, v4}, Landroid/support/v4/widget/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result v0

    return v0
.end method

.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20

    move-object/from16 v0, p1

    .line 939
    invoke-static {v0}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v3

    move-object/from16 v0, p1

    .line 940
    invoke-static {v0}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v4

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    .line 945
    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    :cond_0
    move-object/from16 v0, p0

    .line 948
    iget-object v5, v0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v5, :cond_1

    .line 949
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    move-object/from16 v0, p0

    .line 951
    iget-object v5, v0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1036
    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :cond_2
    :goto_0
    :sswitch_0
    move-object/from16 v0, p0

    .line 1036
    iget v3, v0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    .line 1036
    const/4 v6, 0x1

    if-ne v3, v6, :cond_8

    .line 1036
    const/4 v6, 0x1

    return v6

    :sswitch_1
    move-object/from16 v0, p1

    .line 955
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    move-object/from16 v0, p1

    .line 956
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    move-object/from16 v0, p0

    .line 958
    invoke-direct {v0, v7, v8, v3}, Landroid/support/v4/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 960
    float-to-int v4, v7

    float-to-int v9, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p0

    .line 963
    iget-object v11, v0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v10, v11, :cond_3

    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    const/4 v6, 0x2

    if-ne v9, v6, :cond_3

    move-object/from16 v0, p0

    .line 964
    invoke-virtual {v0, v10, v3}, Landroid/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    :cond_3
    move-object/from16 v0, p0

    .line 967
    iget-object v12, v0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v4, v12, v3

    move-object/from16 v0, p0

    .line 968
    iget v9, v0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v9, v4

    if-eqz v9, :cond_2

    move-object/from16 v0, p0

    .line 969
    iget-object v13, v0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v9, v4

    invoke-virtual {v13, v9, v3}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_0

    :sswitch_2
    move-object/from16 v0, p1

    .line 975
    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v9

    move-object/from16 v0, p1

    .line 976
    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v7

    move-object/from16 v0, p1

    .line 977
    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v8

    move-object/from16 v0, p0

    .line 979
    invoke-direct {v0, v7, v8, v9}, Landroid/support/v4/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    move-object/from16 v0, p0

    .line 982
    iget v4, v0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    .line 983
    iget-object v12, v0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v4, v12, v9

    move-object/from16 v0, p0

    .line 984
    iget v3, v0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    .line 985
    iget-object v13, v0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    and-int v4, v3, v4

    invoke-virtual {v13, v4, v9}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    .line 987
    iget v4, v0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    .line 987
    const/4 v6, 0x2

    if-ne v4, v6, :cond_2

    .line 989
    float-to-int v4, v7

    float-to-int v3, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v11

    move-object/from16 v0, p0

    .line 990
    iget-object v10, v0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v11, v10, :cond_2

    move-object/from16 v0, p0

    .line 991
    invoke-virtual {v0, v11, v9}, Landroid/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto/16 :goto_0

    :sswitch_3
    move-object/from16 v0, p1

    .line 999
    invoke-static {v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v3

    .line 1000
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_5

    move-object/from16 v0, p1

    .line 1001
    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v9

    move-object/from16 v0, p1

    .line 1002
    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v14

    move-object/from16 v0, p1

    .line 1003
    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v15

    move-object/from16 v0, p0

    .line 1004
    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    move-object/from16 v16, v0

    aget v7, v16, v9

    sub-float v8, v14, v7

    move-object/from16 v0, p0

    .line 1005
    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    move-object/from16 v16, v0

    aget v7, v16, v9

    sub-float v7, v15, v7

    move-object/from16 v0, p0

    .line 1007
    invoke-direct {v0, v8, v7, v9}, Landroid/support/v4/widget/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    move-object/from16 v0, p0

    .line 1008
    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    move/from16 v17, v0

    .line 1008
    const/4 v6, 0x1

    move/from16 v0, v17

    if-ne v0, v6, :cond_6

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1019
    invoke-direct {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1013
    :cond_6
    float-to-int v0, v14

    move/from16 v18, v0

    float-to-int v0, v15

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v8, v7}, Landroid/support/v4/widget/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v19

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v9}, Landroid/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v19

    if-nez v19, :cond_5

    .line 1000
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :sswitch_4
    move-object/from16 v0, p1

    .line 1024
    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    .line 1025
    invoke-direct {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->clearMotionHistory(I)V

    goto/16 :goto_0

    :sswitch_5
    move-object/from16 v0, p0

    .line 1031
    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    goto/16 :goto_0

    .line 1024
    :cond_8
    const/4 v6, 0x0

    return v6

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_5
        0x2 -> :sswitch_3
        0x3 -> :sswitch_5
        0x4 -> :sswitch_0
        0x5 -> :sswitch_2
        0x6 -> :sswitch_4
    .end sparse-switch
.end method

.method public smoothSlideViewTo(Landroid/view/View;II)Z
    .locals 3

    .line 539
    iput-object p1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    .line 542
    const/4 v0, 0x0

    .line 542
    const/4 v2, 0x0

    .line 542
    invoke-direct {p0, p2, p3, v0, v2}, Landroid/support/v4/widget/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result v1

    return v1
.end method

.method tryCaptureViewForDrag(Landroid/view/View;I)Z
    .locals 5

    .line 883
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    iget v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    if-ne v1, p2, :cond_0

    const/4 v2, 0x1

    .line 892
    return v2

    :cond_0
    if-eqz p1, :cond_1

    iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-virtual {v3, p1, p2}, Landroid/support/v4/widget/ViewDragHelper$Callback;->tryCaptureView(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 888
    iput p2, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    .line 889
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    .line 888
    const/4 v2, 0x1

    return v2

    .line 888
    :cond_1
    const/4 v2, 0x0

    return v2
.end method
