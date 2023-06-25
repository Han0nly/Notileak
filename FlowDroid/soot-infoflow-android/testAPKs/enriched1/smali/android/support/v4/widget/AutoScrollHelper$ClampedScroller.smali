.class Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/AutoScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClampedScroller"
.end annotation


# instance fields
.field private mDeltaTime:J

.field private mDeltaX:I

.field private mDeltaY:I

.field private mEffectiveRampDown:I

.field private mRampDownDuration:I

.field private mRampUpDuration:I

.field private mStartTime:J

.field private mStopTime:J

.field private mStopValue:F

.field private mTargetVelocityX:F

.field private mTargetVelocityY:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    .line 747
    const/4 v2, 0x0

    .line 747
    iput v2, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaX:I

    .line 748
    const/4 v2, 0x0

    .line 748
    iput v2, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    .line 749
    return-void
.end method

.method private getValueAt(J)F
    .locals 17

    move-object/from16 v0, p0

    .line 787
    iget-wide v2, v0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    cmp-long v4, p1, v2

    if-gez v4, :cond_0

    const/4 v5, 0x0

    .line 794
    return v5

    :cond_0
    move-object/from16 v0, p0

    .line 789
    iget-wide v6, v0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-ltz v4, :cond_1

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    cmp-long v4, p1, v6

    if-gez v4, :cond_2

    :cond_1
    move-object/from16 v0, p0

    .line 790
    iget-wide v6, v0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    sub-long p1, p1, v6

    move-wide/from16 v0, p1

    long-to-float v10, v0

    move-object/from16 v0, p0

    iget v11, v0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mRampUpDuration:I

    int-to-float v12, v11

    div-float v12, v10, v12

    const/4 v5, 0x0

    const v13, 0x3f800000    # 1.0f

    invoke-static {v12, v5, v13}, Landroid/support/v4/widget/AutoScrollHelper;->access$900(FFF)F

    move-result v12

    const v5, 0x3f000000    # 0.5f

    mul-float v14, v12, v5

    return v14

    :cond_2
    move-object/from16 v0, p0

    .line 793
    iget-wide v6, v0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    sub-long p1, p1, v6

    move-object/from16 v0, p0

    .line 794
    iget v12, v0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    const v5, 0x3f800000    # 1.0f

    sub-float v12, v5, v12

    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    move-wide/from16 v0, p1

    long-to-float v10, v0

    move-object/from16 v0, p0

    iget v11, v0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mEffectiveRampDown:I

    int-to-float v0, v11

    move/from16 v16, v0

    div-float v16, v10, v16

    const/4 v5, 0x0

    const v13, 0x3f800000    # 1.0f

    move/from16 v0, v16

    invoke-static {v0, v5, v13}, Landroid/support/v4/widget/AutoScrollHelper;->access$900(FFF)F

    move-result v16

    mul-float v16, v16, v15

    add-float v14, v16, v12

    return v14
.end method

.method private interpolateValue(F)F
    .locals 3

    const v1, -0x3f800000    # -4.0f

    mul-float v0, v1, p1

    mul-float v2, v0, p1

    const v1, 0x40800000    # 4.0f

    mul-float v0, v1, p1

    add-float/2addr v2, v0

    return v2
.end method


# virtual methods
.method public computeScrollDelta()V
    .locals 13

    .line 818
    iget-wide v0, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    const-wide/16 v3, 0x0

    cmp-long v2, v0, v3

    if-nez v2, :cond_0

    .line 819
    new-instance v5, Ljava/lang/RuntimeException;

    .line 819
    const-string v6, "Cannot compute scroll delta before calling start()"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 822
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v7

    .line 823
    invoke-direct {p0, v7, v8}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->getValueAt(J)F

    move-result v9

    .line 824
    invoke-direct {p0, v9}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->interpolateValue(F)F

    move-result v9

    .line 825
    iget-wide v0, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    sub-long v0, v7, v0

    .line 827
    iput-wide v7, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    .line 828
    long-to-float v10, v0

    mul-float/2addr v10, v9

    iget v11, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    mul-float v11, v10, v11

    float-to-int v12, v11

    iput v12, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaX:I

    .line 829
    long-to-float v11, v0

    mul-float/2addr v11, v9

    iget v10, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    mul-float/2addr v11, v10

    float-to-int v12, v11

    iput v12, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    .line 830
    return-void
.end method

.method public getDeltaX()I
    .locals 1

    .line 856
    iget v0, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaX:I

    return v0
.end method

.method public getDeltaY()I
    .locals 1

    .line 864
    iget v0, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    return v0
.end method

.method public getHorizontalDirection()I
    .locals 3

    .line 844
    iget v0, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    iget v1, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float v1, v0, v1

    float-to-int v2, v1

    return v2
.end method

.method public getVerticalDirection()I
    .locals 3

    .line 848
    iget v0, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    iget v1, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float v1, v0, v1

    float-to-int v2, v1

    return v2
.end method

.method public isFinished()Z
    .locals 11

    .line 782
    iget-wide v0, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    const-wide/16 v3, 0x0

    cmp-long v2, v0, v3

    if-lez v2, :cond_0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iget-wide v0, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    iget v7, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mEffectiveRampDown:I

    int-to-long v8, v7

    add-long v8, v0, v8

    cmp-long v2, v5, v8

    if-lez v2, :cond_0

    const/4 v10, 0x1

    return v10

    :cond_0
    const/4 v10, 0x0

    return v10
.end method

.method public requestStop()V
    .locals 8

    .line 775
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 776
    iget-wide v2, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    sub-long v2, v0, v2

    long-to-int v4, v2

    iget v5, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mRampDownDuration:I

    const/4 v6, 0x0

    invoke-static {v4, v6, v5}, Landroid/support/v4/widget/AutoScrollHelper;->access$800(III)I

    move-result v4

    iput v4, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mEffectiveRampDown:I

    .line 777
    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->getValueAt(J)F

    move-result v7

    iput v7, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    .line 778
    iput-wide v0, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    .line 779
    return-void
.end method

.method public setRampDownDuration(I)V
    .locals 0

    .line 756
    iput p1, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mRampDownDuration:I

    .line 757
    return-void
.end method

.method public setRampUpDuration(I)V
    .locals 0

    .line 752
    iput p1, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mRampUpDuration:I

    .line 753
    return-void
.end method

.method public setTargetVelocity(FF)V
    .locals 0

    .line 839
    iput p1, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    .line 840
    iput p2, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    .line 841
    return-void
.end method

.method public start()V
    .locals 6

    .line 763
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    .line 765
    iget-wide v0, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    iput-wide v0, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    const v4, 0x3f000000    # 0.5f

    iput v4, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    .line 767
    const/4 v5, 0x0

    .line 767
    iput v5, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaX:I

    .line 768
    const/4 v5, 0x0

    .line 768
    iput v5, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    .line 769
    return-void
.end method
