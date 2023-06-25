.class final Landroid/support/v4/widget/SwipeProgressBar;
.super Ljava/lang/Object;
.source "SwipeProgressBar.java"


# static fields
.field private static final ANIMATION_DURATION_MS:I = 0x7d0

.field private static final COLOR1:I = -0x4d000000

.field private static final COLOR2:I = -0x80000000

.field private static final COLOR3:I = 0x4d000000

.field private static final COLOR4:I = 0x1a000000

.field private static final FINISH_ANIMATION_DURATION_MS:I = 0x3e8

.field private static final INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private final mClipRect:Landroid/graphics/RectF;

.field private mColor1:I

.field private mColor2:I

.field private mColor3:I

.field private mColor4:I

.field private mFinishTime:J

.field private final mPaint:Landroid/graphics/Paint;

.field private mParent:Landroid/view/View;

.field private mRunning:Z

.field private mStartTime:J

.field private mTriggerPercentage:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    invoke-static {}, Landroid/support/v4/widget/BakedBezierInterpolator;->getInstance()Landroid/support/v4/widget/BakedBezierInterpolator;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/SwipeProgressBar;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 54
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mClipRect:Landroid/graphics/RectF;

    .line 67
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    .line 70
    iput-object p1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mParent:Landroid/view/View;

    const v3, -0x4d000000

    iput v3, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    const v3, -0x80000000

    iput v3, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor2:I

    const v3, 0x4d000000    # 1.34217728E8f

    iput v3, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor3:I

    const v3, 0x1a000000

    iput v3, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor4:I

    .line 75
    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;FFIF)V
    .locals 4

    .line 255
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 256
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 257
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 258
    sget-object v1, Landroid/support/v4/widget/SwipeProgressBar;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v1, p5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p5

    .line 259
    invoke-virtual {p1, p5, p5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 260
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 260
    const/4 v2, 0x0

    .line 260
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, p2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 261
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 262
    return-void
.end method

.method private drawTrigger(Landroid/graphics/Canvas;II)V
    .locals 6

    .line 241
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 242
    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p2

    iget v5, p0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    mul-float v5, v4, v5

    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v5, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 243
    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;)V
    .locals 41

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 139
    div-int/lit8 v9, v7, 0x2

    .line 140
    div-int/lit8 v10, v8, 0x2

    .line 141
    const/4 v11, 0x0

    move-object/from16 v0, p1

    .line 142
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    const-wide/16 v17, 0x0

    cmp-long v16, v14, v17

    if-lez v16, :cond_e

    .line 146
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mStartTime:J

    move-wide/from16 v19, v0

    sub-long v19, v14, v19

    const-wide/16 v17, 0x7d0

    rem-long v21, v19, v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mStartTime:J

    move-wide/from16 v19, v0

    sub-long v19, v14, v19

    const-wide/16 v17, 0x7d0

    div-long v19, v19, v17

    move-wide/from16 v0, v21

    .line 149
    long-to-float v0, v0

    move/from16 v23, v0

    const v24, 0x41a00000    # 20.0f

    div-float v23, v23, v24

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    move-wide/from16 v25, v0

    sub-long v25, v14, v25

    const-wide/16 v17, 0x3e8

    cmp-long v16, v25, v17

    if-ltz v16, :cond_1

    const-wide/16 v17, 0x0

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    .line 238
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    move-wide/from16 v25, v0

    sub-long v25, v14, v25

    const-wide/16 v17, 0x3e8

    rem-long v21, v25, v17

    move-wide/from16 v0, v21

    .line 165
    long-to-float v0, v0

    move/from16 v27, v0

    const v24, 0x41200000    # 10.0f

    div-float v27, v27, v24

    const v24, 0x42c80000    # 100.0f

    div-float v28, v27, v24

    .line 168
    div-int/lit8 v7, v7, 0x2

    int-to-float v0, v7

    move/from16 v27, v0

    sget-object v29, Landroid/support/v4/widget/SwipeProgressBar;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v28

    mul-float v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mClipRect:Landroid/graphics/RectF;

    move-object/from16 v30, v0

    int-to-float v0, v9

    move/from16 v28, v0

    sub-float v31, v28, v27

    int-to-float v0, v9

    move/from16 v28, v0

    add-float v27, v28, v27

    int-to-float v0, v8

    move/from16 v28, v0

    const/16 v24, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v24

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mClipRect:Landroid/graphics/RectF;

    move-object/from16 v30, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 175
    const/4 v11, 0x1

    :cond_2
    const-wide/16 v17, 0x0

    cmp-long v34, v19, v17

    if-nez v34, :cond_a

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->drawColor(I)V

    :goto_1
    const/16 v24, 0x0

    cmpl-float v34, v23, v24

    if-ltz v34, :cond_3

    const v24, 0x41c80000    # 25.0f

    cmpg-float v34, v23, v24

    if-gtz v34, :cond_3

    const v24, 0x41c80000    # 25.0f

    add-float v35, v24, v23

    const v24, 0x40000000    # 2.0f

    mul-float v35, v35, v24

    const v24, 0x42c80000    # 100.0f

    div-float v35, v35, v24

    .line 201
    int-to-float v0, v9

    move/from16 v31, v0

    int-to-float v0, v10

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    move/from16 v3, v27

    move v4, v7

    move/from16 v5, v35

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/widget/SwipeProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V

    :cond_3
    const/16 v24, 0x0

    cmpl-float v34, v23, v24

    if-ltz v34, :cond_4

    const v24, 0x42480000    # 50.0f

    cmpg-float v34, v23, v24

    if-gtz v34, :cond_4

    const v24, 0x40000000    # 2.0f

    mul-float v35, v24, v23

    const v24, 0x42c80000    # 100.0f

    div-float v35, v35, v24

    .line 205
    int-to-float v0, v9

    move/from16 v31, v0

    int-to-float v0, v10

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor2:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    move/from16 v3, v27

    move v4, v7

    move/from16 v5, v35

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/widget/SwipeProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V

    :cond_4
    const v24, 0x41c80000    # 25.0f

    cmpl-float v34, v23, v24

    if-ltz v34, :cond_5

    const v24, 0x42960000    # 75.0f

    cmpg-float v34, v23, v24

    if-gtz v34, :cond_5

    const v24, 0x41c80000    # 25.0f

    sub-float v35, v23, v24

    const v24, 0x40000000    # 2.0f

    mul-float v35, v35, v24

    const v24, 0x42c80000    # 100.0f

    div-float v35, v35, v24

    .line 209
    int-to-float v0, v9

    move/from16 v31, v0

    int-to-float v0, v10

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor3:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    move/from16 v3, v27

    move v4, v7

    move/from16 v5, v35

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/widget/SwipeProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V

    :cond_5
    const v24, 0x42480000    # 50.0f

    cmpl-float v34, v23, v24

    if-ltz v34, :cond_6

    const v24, 0x42c80000    # 100.0f

    cmpg-float v34, v23, v24

    if-gtz v34, :cond_6

    const v24, 0x42480000    # 50.0f

    sub-float v35, v23, v24

    const v24, 0x40000000    # 2.0f

    mul-float v35, v35, v24

    const v24, 0x42c80000    # 100.0f

    div-float v35, v35, v24

    .line 213
    int-to-float v0, v9

    move/from16 v31, v0

    int-to-float v0, v10

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor4:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    move/from16 v3, v27

    move v4, v7

    move/from16 v5, v35

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/widget/SwipeProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V

    :cond_6
    const v24, 0x42960000    # 75.0f

    cmpl-float v34, v23, v24

    if-ltz v34, :cond_7

    const v24, 0x42c80000    # 100.0f

    cmpg-float v34, v23, v24

    if-gtz v34, :cond_7

    const v24, 0x42960000    # 75.0f

    sub-float v35, v23, v24

    const v24, 0x40000000    # 2.0f

    mul-float v35, v35, v24

    const v24, 0x42c80000    # 100.0f

    div-float v35, v35, v24

    .line 217
    int-to-float v0, v9

    move/from16 v31, v0

    int-to-float v0, v10

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    move/from16 v3, v23

    move v4, v7

    move/from16 v5, v35

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/widget/SwipeProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    move/from16 v35, v0

    const/16 v24, 0x0

    cmpl-float v34, v35, v24

    if-lez v34, :cond_8

    if-eqz v11, :cond_8

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    move-object/from16 v0, p1

    .line 225
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9, v10}, Landroid/support/v4/widget/SwipeProgressBar;->drawTrigger(Landroid/graphics/Canvas;II)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mParent:Landroid/view/View;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_9
    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    :cond_a
    const/16 v24, 0x0

    cmpl-float v34, v23, v24

    if-ltz v34, :cond_b

    const v24, 0x41c80000    # 25.0f

    cmpg-float v34, v23, v24

    if-gez v34, :cond_b

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor4:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_1

    :cond_b
    const v24, 0x41c80000    # 25.0f

    cmpl-float v34, v23, v24

    if-ltz v34, :cond_c

    const v24, 0x42480000    # 50.0f

    cmpg-float v34, v23, v24

    if-gez v34, :cond_c

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_1

    :cond_c
    const v24, 0x42480000    # 50.0f

    cmpl-float v34, v23, v24

    if-ltz v34, :cond_d

    const v24, 0x42960000    # 75.0f

    cmpg-float v34, v23, v24

    if-gez v34, :cond_d

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor2:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor3:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_1

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    move/from16 v35, v0

    const/16 v24, 0x0

    cmpl-float v34, v35, v24

    if-lez v34, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    move/from16 v35, v0

    move/from16 v0, v35

    float-to-double v0, v0

    move-wide/from16 v37, v0

    const-wide v39, 0x3ff0000000000000L    # 1.0

    cmpg-double v34, v37, v39

    if-gtz v34, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9, v10}, Landroid/support/v4/widget/SwipeProgressBar;->drawTrigger(Landroid/graphics/Canvas;II)V

    goto/16 :goto_2
.end method

.method isRunning()Z
    .locals 7

    .line 133
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    if-nez v0, :cond_0

    iget-wide v1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    const-wide/16 v4, 0x0

    cmp-long v3, v1, v4

    if-lez v3, :cond_1

    :cond_0
    const/4 v6, 0x1

    return v6

    :cond_1
    const/4 v6, 0x0

    return v6
.end method

.method setBounds(IIII)V
    .locals 1

    .line 268
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 269
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 270
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iput p3, v0, Landroid/graphics/Rect;->right:I

    .line 271
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    .line 272
    return-void
.end method

.method setColorScheme(IIII)V
    .locals 0

    .line 88
    iput p1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    .line 89
    iput p2, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor2:I

    .line 90
    iput p3, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor3:I

    .line 91
    iput p4, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor4:I

    .line 92
    return-void
.end method

.method setTriggerPercentage(F)V
    .locals 3

    .line 100
    iput p1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mStartTime:J

    .line 102
    iget-object v2, p0, Landroid/support/v4/widget/SwipeProgressBar;->mParent:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 103
    return-void
.end method

.method start()V
    .locals 6

    .line 109
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    if-nez v0, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    .line 111
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/support/v4/widget/SwipeProgressBar;->mStartTime:J

    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    .line 113
    iget-object v5, p0, Landroid/support/v4/widget/SwipeProgressBar;->mParent:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->postInvalidate()V

    .line 115
    :cond_0
    return-void
.end method

.method stop()V
    .locals 6

    .line 121
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    .line 123
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    .line 125
    iget-object v5, p0, Landroid/support/v4/widget/SwipeProgressBar;->mParent:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->postInvalidate()V

    .line 127
    :cond_0
    return-void
.end method
