.class public Landroid/support/v7/internal/widget/ProgressBarICS;
.super Landroid/view/View;
.source "ProgressBarICS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/internal/widget/ProgressBarICS$1;,
        Landroid/support/v7/internal/widget/ProgressBarICS$SavedState;,
        Landroid/support/v7/internal/widget/ProgressBarICS$RefreshProgressRunnable;
    }
.end annotation


# static fields
.field private static final ANIMATION_RESOLUTION:I = 0xc8

.field private static final MAX_LEVEL:I = 0x2710

.field private static final android_R_styleable_ProgressBar:[I


# instance fields
.field private mAnimation:Landroid/view/animation/AlphaAnimation;

.field private mBehavior:I

.field private mCurrentDrawable:Landroid/graphics/drawable/Drawable;

.field private mDuration:I

.field private mInDrawing:Z

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastDrawTime:J

.field private mMax:I

.field mMaxHeight:I

.field mMaxWidth:I

.field mMinHeight:I

.field mMinWidth:I

.field private mNoInvalidate:Z

.field private mOnlyIndeterminate:Z

.field private mProgress:I

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mRefreshProgressRunnable:Landroid/support/v7/internal/widget/ProgressBarICS$RefreshProgressRunnable;

.field mSampleTile:Landroid/graphics/Bitmap;

.field private mSecondaryProgress:I

.field private mShouldStartAnimationDrawable:Z

.field private mTransformation:Landroid/view/animation/Transformation;

.field private mUiThreadId:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v1, 0xe

    new-array v0, v1, [I

    const/4 v1, 0x0

    const v2, 0x1010136

    aput v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x1010137

    aput v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x1010138

    aput v2, v0, v1

    const/4 v1, 0x3

    const v2, 0x1010139

    aput v2, v0, v1

    const/4 v1, 0x4

    const v2, 0x101013a

    aput v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x101013b

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x101013c

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x101013d

    aput v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x101013e

    aput v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x101013f

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x101011f

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x1010140

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x1010120

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x1010141

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/internal/widget/ProgressBarICS;->android_R_styleable_ProgressBar:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mUiThreadId:J

    .line 111
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->initProgressBar()V

    .line 113
    sget-object v4, Landroid/support/v7/internal/widget/ProgressBarICS;->android_R_styleable_ProgressBar:[I

    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 116
    const/4 v6, 0x1

    .line 116
    iput-boolean v6, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mNoInvalidate:Z

    .line 118
    iget p4, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMax:I

    const/4 v6, 0x0

    move p3, v6

    invoke-virtual {v5, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    invoke-virtual {p0, p4}, Landroid/support/v7/internal/widget/ProgressBarICS;->setMax(I)V

    .line 119
    iget p4, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mProgress:I

    const/4 v6, 0x1

    move p3, v6

    invoke-virtual {v5, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    invoke-virtual {p0, p4}, Landroid/support/v7/internal/widget/ProgressBarICS;->setProgress(I)V

    iget p4, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mSecondaryProgress:I

    const/4 v6, 0x2

    invoke-virtual {v5, v6, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    invoke-virtual {p0, p4}, Landroid/support/v7/internal/widget/ProgressBarICS;->setSecondaryProgress(I)V

    iget-boolean v7, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminate:Z

    const/4 v6, 0x3

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iget-boolean v8, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mOnlyIndeterminate:Z

    const/4 v6, 0x4

    invoke-virtual {v5, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mOnlyIndeterminate:Z

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 127
    invoke-direct {p0, v9}, Landroid/support/v7/internal/widget/ProgressBarICS;->tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 128
    invoke-virtual {p0, v9}, Landroid/support/v7/internal/widget/ProgressBarICS;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 133
    const/4 v6, 0x0

    .line 133
    invoke-direct {p0, v9, v6}, Landroid/support/v7/internal/widget/ProgressBarICS;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 136
    invoke-virtual {p0, v9}, Landroid/support/v7/internal/widget/ProgressBarICS;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget p3, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mDuration:I

    const/4 v6, 0x7

    invoke-virtual {v5, v6, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    iput p4, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mDuration:I

    iget p3, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mBehavior:I

    const/16 v6, 0x8

    invoke-virtual {v5, v6, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    iput p4, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mBehavior:I

    iget p3, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMinWidth:I

    const/16 v6, 0x9

    invoke-virtual {v5, v6, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMinWidth:I

    iget p3, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMaxWidth:I

    const/16 v6, 0xa

    invoke-virtual {v5, v6, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMaxWidth:I

    iget p3, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMinHeight:I

    const/16 v6, 0xb

    invoke-virtual {v5, v6, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMinHeight:I

    iget p3, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMaxHeight:I

    const/16 v6, 0xc

    invoke-virtual {v5, v6, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMaxHeight:I

    const/16 v6, 0xd

    const v10, 0x10a000b

    invoke-virtual {v5, v6, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    if-lez p4, :cond_2

    .line 148
    invoke-virtual {p0, p1, p4}, Landroid/support/v7/internal/widget/ProgressBarICS;->setInterpolator(Landroid/content/Context;I)V

    .line 151
    :cond_2
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 153
    const/4 v6, 0x0

    .line 153
    iput-boolean v6, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mNoInvalidate:Z

    .line 154
    iget-boolean v8, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mOnlyIndeterminate:Z

    if-nez v8, :cond_3

    if-eqz v7, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ProgressBarICS;->setIndeterminate(Z)V

    .line 155
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/internal/widget/ProgressBarICS;IIZZ)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/internal/widget/ProgressBarICS;->doRefreshProgress(IIZZ)V

    return-void
.end method

.method static synthetic access$102(Landroid/support/v7/internal/widget/ProgressBarICS;Landroid/support/v7/internal/widget/ProgressBarICS$RefreshProgressRunnable;)Landroid/support/v7/internal/widget/ProgressBarICS$RefreshProgressRunnable;
    .locals 0

    .line 52
    iput-object p1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mRefreshProgressRunnable:Landroid/support/v7/internal/widget/ProgressBarICS$RefreshProgressRunnable;

    return-object p1
.end method

.method private declared-synchronized doRefreshProgress(IIZZ)V
    .locals 9

    .line 418
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMax:I

    if-lez v0, :cond_1

    int-to-float v1, p2

    iget v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMax:I

    int-to-float v2, v0

    div-float/2addr v1, v2

    .line 419
    :goto_0
    iget-object v3, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    .line 421
    const/4 v4, 0x0

    instance-of p4, v3, Landroid/graphics/drawable/LayerDrawable;

    if-eqz p4, :cond_0

    move-object v6, v3

    check-cast v6, Landroid/graphics/drawable/LayerDrawable;

    move-object v5, v6

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_0
    const v7, 0x461c4000    # 10000.0f

    mul-float v2, v7, v1

    float-to-int p2, v2

    if-eqz v4, :cond_2

    :goto_1
    invoke-virtual {v4, p2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    :goto_2
    monitor-exit p0

    return-void

    .line 418
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move-object v4, v3

    .line 428
    goto :goto_1

    .line 430
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->invalidate()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 418
    :catch_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method private initProgressBar()V
    .locals 2

    const/16 v0, 0x64

    iput v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMax:I

    const/4 v0, 0x0

    move v1, v0

    .line 243
    iput v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mProgress:I

    const/4 v0, 0x0

    move v1, v0

    .line 244
    iput v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mSecondaryProgress:I

    .line 245
    const/4 v0, 0x0

    .line 245
    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminate:Z

    .line 246
    const/4 v0, 0x0

    .line 246
    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mOnlyIndeterminate:Z

    const/16 v0, 0xfa0

    iput v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mDuration:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mBehavior:I

    .line 249
    const/16 v0, 0x18

    .line 249
    iput v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMinWidth:I

    .line 250
    const/16 v0, 0x30

    .line 250
    iput v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMaxWidth:I

    .line 251
    const/16 v0, 0x18

    .line 251
    iput v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMinHeight:I

    .line 252
    const/16 v0, 0x30

    .line 252
    iput v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMaxHeight:I

    .line 253
    return-void
.end method

.method private declared-synchronized refreshProgress(IIZ)V
    .locals 10

    .line 435
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mUiThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    const/4 v6, 0x1

    invoke-direct {p0, p1, p2, p3, v6}, Landroid/support/v7/internal/widget/ProgressBarICS;->doRefreshProgress(IIZZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    :goto_0
    monitor-exit p0

    return-void

    .line 439
    :cond_0
    :try_start_1
    iget-object v7, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mRefreshProgressRunnable:Landroid/support/v7/internal/widget/ProgressBarICS$RefreshProgressRunnable;

    if-eqz v7, :cond_1

    .line 441
    iget-object v7, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mRefreshProgressRunnable:Landroid/support/v7/internal/widget/ProgressBarICS$RefreshProgressRunnable;

    const/4 v8, 0x0

    iput-object v8, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mRefreshProgressRunnable:Landroid/support/v7/internal/widget/ProgressBarICS$RefreshProgressRunnable;

    .line 444
    invoke-virtual {v7, p1, p2, p3}, Landroid/support/v7/internal/widget/ProgressBarICS$RefreshProgressRunnable;->setup(IIZ)V

    .line 449
    :goto_1
    invoke-virtual {p0, v7}, Landroid/support/v7/internal/widget/ProgressBarICS;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 435
    :catch_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 447
    :cond_1
    :try_start_2
    new-instance v7, Landroid/support/v7/internal/widget/ProgressBarICS$RefreshProgressRunnable;

    invoke-direct {v7, p0, p1, p2, p3}, Landroid/support/v7/internal/widget/ProgressBarICS$RefreshProgressRunnable;-><init>(Landroid/support/v7/internal/widget/ProgressBarICS;IIZ)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 26

    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v4, :cond_3

    move-object/from16 v6, p1

    .line 164
    check-cast v6, Landroid/graphics/drawable/LayerDrawable;

    .line 164
    move-object v5, v6

    .line 165
    invoke-virtual {v5}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v7

    .line 166
    new-array v8, v7, [Landroid/graphics/drawable/Drawable;

    .line 168
    const/4 v9, 0x0

    :goto_0
    if-ge v9, v7, :cond_2

    .line 169
    invoke-virtual {v5, v9}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v10

    .line 170
    invoke-virtual {v5, v9}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 170
    const v11, 0x102000d

    if-eq v10, v11, :cond_0

    .line 170
    const v11, 0x102000f

    if-ne v10, v11, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Landroid/support/v7/internal/widget/ProgressBarICS;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    aput-object p1, v8, v9

    .line 168
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 170
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 174
    :cond_2
    new-instance v12, Landroid/graphics/drawable/LayerDrawable;

    move-object/from16 p1, v12

    invoke-direct {v12, v8}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 176
    const/4 v13, 0x0

    :goto_2
    if-ge v13, v7, :cond_5

    .line 177
    invoke-virtual {v5, v13}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v10

    move-object/from16 v14, p1

    check-cast v14, Landroid/graphics/drawable/LayerDrawable;

    move-object v12, v14

    invoke-virtual {v12, v13, v10}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 176
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_6

    move-object/from16 v16, p1

    .line 183
    check-cast v16, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v15, v16

    invoke-virtual {v15}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v17

    move-object/from16 v0, p0

    .line 184
    iget-object v0, v0, Landroid/support/v7/internal/widget/ProgressBarICS;->mSampleTile:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    if-nez v18, :cond_4

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    .line 185
    iput-object v0, v1, Landroid/support/v7/internal/widget/ProgressBarICS;->mSampleTile:Landroid/graphics/Bitmap;

    .line 188
    :cond_4
    new-instance v19, Landroid/graphics/drawable/ShapeDrawable;

    move-object/from16 p1, v19

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getDrawableShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 190
    new-instance v21, Landroid/graphics/BitmapShader;

    sget-object v22, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v23, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    check-cast v19, Landroid/graphics/drawable/ShapeDrawable;

    move-object/from16 v0, v19

    .line 192
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    if-eqz p2, :cond_5

    new-instance v25, Landroid/graphics/drawable/ClipDrawable;

    const/4 v11, 0x1

    move v10, v11

    const/4 v11, 0x3

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11, v10}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    move-object/from16 p1, v25

    .line 198
    :cond_5
    return-object p1

    :cond_6
    return-object p1
.end method

.method private tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 8

    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    .line 213
    move-object v2, p1

    .line 213
    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    .line 213
    move-object v1, v2

    .line 214
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v3

    .line 215
    new-instance v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 216
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v0

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 218
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    .line 219
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v6, 0x1

    invoke-direct {p0, p1, v6}, Landroid/support/v7/internal/widget/ProgressBarICS;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 v6, 0x2710

    .line 220
    invoke-virtual {p1, v6}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 221
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v7

    invoke-virtual {v4, p1, v7}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 218
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 218
    :cond_0
    const/16 v6, 0x2710

    .line 223
    invoke-virtual {v4, v6}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    .line 224
    move-object p1, v4

    .line 226
    :cond_1
    return-object p1
.end method

.method private updateDrawableBounds(II)V
    .locals 16

    move-object/from16 v0, p0

    .line 732
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getPaddingRight()I

    move-result v1

    sub-int v2, p1, v1

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v2, v1

    move-object/from16 v0, p0

    .line 733
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getPaddingBottom()I

    move-result v1

    sub-int v1, p2, v1

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getPaddingTop()I

    move-result v3

    sub-int v4, v1, v3

    .line 734
    const/4 v1, 0x0

    .line 735
    const/4 v3, 0x0

    move-object/from16 v0, p0

    .line 737
    iget-object v5, v0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    .line 739
    iget-boolean v6, v0, Landroid/support/v7/internal/widget/ProgressBarICS;->mOnlyIndeterminate:Z

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v6, v5, Landroid/graphics/drawable/AnimationDrawable;

    if-nez v6, :cond_0

    move-object/from16 v0, p0

    .line 742
    iget-object v5, v0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    move-object/from16 v0, p0

    .line 743
    iget-object v5, v0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 744
    int-to-float v9, v7

    int-to-float v10, v8

    div-float/2addr v9, v10

    move/from16 v0, p1

    .line 745
    int-to-float v10, v0

    move/from16 v0, p2

    int-to-float v11, v0

    div-float/2addr v10, v11

    .line 746
    cmpl-float v12, v9, v10

    if-eqz v12, :cond_0

    .line 747
    cmpl-float v12, v10, v9

    if-lez v12, :cond_3

    move/from16 v0, p2

    .line 749
    int-to-float v11, v0

    mul-float/2addr v11, v9

    float-to-int v2, v11

    .line 750
    sub-int v3, p1, v2

    div-int/lit8 v3, v3, 0x2

    .line 751
    add-int v2, v3, v2

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    .line 760
    iget-object v5, v0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v3, v1, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    move-object/from16 v0, p0

    .line 763
    iget-object v5, v0, Landroid/support/v7/internal/widget/ProgressBarICS;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    .line 764
    iget-object v5, v0, Landroid/support/v7/internal/widget/ProgressBarICS;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 764
    const/4 v13, 0x0

    .line 764
    const/4 v14, 0x0

    invoke-virtual {v5, v13, v14, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 766
    :cond_2
    return-void

    :cond_3
    move/from16 v0, p1

    .line 754
    int-to-float v11, v0

    const v15, 0x3f800000    # 1.0f

    div-float v9, v15, v9

    mul-float/2addr v11, v9

    float-to-int v4, v11

    .line 755
    sub-int v1, p2, v4

    div-int/lit8 v1, v1, 0x2

    .line 756
    add-int v4, v1, v4

    goto :goto_0
.end method

.method private updateDrawableState()V
    .locals 3

    .line 827
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getDrawableState()[I

    move-result-object v0

    .line 829
    iget-object v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 830
    iget-object v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 833
    :cond_0
    iget-object v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 834
    iget-object v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 836
    :cond_1
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .line 822
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 823
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->updateDrawableState()V

    .line 824
    return-void
.end method

.method getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 6

    const/16 v1, 0x8

    new-array v0, v1, [F

    const/4 v1, 0x0

    const v2, 0x40a00000    # 5.0f

    aput v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x40a00000    # 5.0f

    aput v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x40a00000    # 5.0f

    aput v2, v0, v1

    const/4 v1, 0x3

    const v2, 0x40a00000    # 5.0f

    aput v2, v0, v1

    const/4 v1, 0x4

    const v2, 0x40a00000    # 5.0f

    aput v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x40a00000    # 5.0f

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x40a00000    # 5.0f

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x40a00000    # 5.0f

    aput v2, v0, v1

    .line 203
    new-instance v3, Landroid/graphics/drawable/shapes/RoundRectShape;

    .line 203
    const/4 v4, 0x0

    .line 203
    const/4 v5, 0x0

    invoke-direct {v3, v0, v4, v5}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    return-object v3
.end method

.method public getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 299
    iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 676
    iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public declared-synchronized getMax()I
    .locals 2

    .line 560
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMax:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    monitor-exit p0

    return v0

    :catch_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getProgress()I
    .locals 3

    .line 531
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminate:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mProgress:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 332
    iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public declared-synchronized getSecondaryProgress()I
    .locals 3

    .line 547
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminate:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mSecondaryProgress:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final declared-synchronized incrementProgressBy(I)V
    .locals 2

    .line 595
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ProgressBarICS;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    monitor-exit p0

    return-void

    .line 595
    :catch_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized incrementSecondaryProgressBy(I)V
    .locals 2

    .line 606
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mSecondaryProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ProgressBarICS;->setSecondaryProgress(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    monitor-exit p0

    return-void

    .line 606
    :catch_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 7

    .line 711
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mInDrawing:Z

    if-nez v0, :cond_0

    .line 712
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ProgressBarICS;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 713
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 714
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getPaddingLeft()I

    move-result v3

    add-int v4, v2, v3

    .line 715
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getPaddingTop()I

    move-result v3

    add-int v3, v2, v3

    .line 717
    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int v5, v2, v4

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int v6, v2, v3

    iget v2, v1, Landroid/graphics/Rect;->right:I

    add-int v4, v2, v4

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v5, v6, v4, v2}, Landroid/support/v7/internal/widget/ProgressBarICS;->invalidate(IIII)V

    .line 723
    :cond_0
    :goto_0
    return-void

    .line 720
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public declared-synchronized isIndeterminate()Z
    .locals 2

    .line 261
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminate:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    monitor-exit p0

    return v0

    :catch_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 900
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 901
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminate:Z

    if-eqz v0, :cond_0

    .line 902
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->startAnimation()V

    .line 904
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 908
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminate:Z

    if-eqz v0, :cond_0

    .line 909
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->stopAnimation()V

    .line 911
    :cond_0
    iget-object v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mRefreshProgressRunnable:Landroid/support/v7/internal/widget/ProgressBarICS$RefreshProgressRunnable;

    if-eqz v1, :cond_1

    .line 912
    iget-object v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mRefreshProgressRunnable:Landroid/support/v7/internal/widget/ProgressBarICS$RefreshProgressRunnable;

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 917
    :cond_1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 918
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 24

    .line 770
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super {v0, v1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    .line 772
    iget-object v4, v0, Landroid/support/v7/internal/widget/ProgressBarICS;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    move-object/from16 v0, p1

    .line 776
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p0

    .line 777
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getPaddingLeft()I

    move-result v5

    int-to-float v6, v5

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getPaddingTop()I

    move-result v5

    int-to-float v7, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    .line 778
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getDrawingTime()J

    move-result-wide v8

    move-object/from16 v0, p0

    .line 779
    iget-object v10, v0, Landroid/support/v7/internal/widget/ProgressBarICS;->mAnimation:Landroid/view/animation/AlphaAnimation;

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    .line 780
    iget-object v10, v0, Landroid/support/v7/internal/widget/ProgressBarICS;->mAnimation:Landroid/view/animation/AlphaAnimation;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v7/internal/widget/ProgressBarICS;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v10, v8, v9, v11}, Landroid/view/animation/AlphaAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-object/from16 v0, p0

    .line 781
    iget-object v11, v0, Landroid/support/v7/internal/widget/ProgressBarICS;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v11}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v7
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/support/v7/internal/widget/ProgressBarICS;->mInDrawing:Z

    const v13, 0x461c4000    # 10000.0f

    mul-float v7, v13, v7

    float-to-int v5, v7

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/support/v7/internal/widget/ProgressBarICS;->mInDrawing:Z

    .line 788
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/support/v7/internal/widget/ProgressBarICS;->mLastDrawTime:J

    sub-long/2addr v14, v8

    const-wide/16 v17, 0xc8

    cmp-long v16, v14, v17

    if-ltz v16, :cond_0

    .line 789
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/support/v7/internal/widget/ProgressBarICS;->mLastDrawTime:J

    const-wide/16 v17, 0xc8

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/widget/ProgressBarICS;->postInvalidateDelayed(J)V

    :cond_0
    move-object/from16 v0, p1

    .line 793
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p1

    .line 794
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    move-object/from16 v0, p0

    .line 795
    iget-boolean v0, v0, Landroid/support/v7/internal/widget/ProgressBarICS;->mShouldStartAnimationDrawable:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    instance-of v0, v4, Landroid/graphics/drawable/Animatable;

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 796
    move-object/from16 v21, v4

    .line 796
    check-cast v21, Landroid/graphics/drawable/Animatable;

    .line 796
    move-object/from16 v20, v21

    move-object/from16 v0, v20

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/support/v7/internal/widget/ProgressBarICS;->mShouldStartAnimationDrawable:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 800
    :cond_1
    monitor-exit p0

    return-void

    .line 786
    :catch_0
    move-exception v22

    :try_start_3
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/support/v7/internal/widget/ProgressBarICS;->mInDrawing:Z

    throw v22
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 770
    :catch_1
    move-exception v23

    monitor-exit p0

    throw v23
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 6

    .line 804
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 806
    const/4 v1, 0x0

    .line 807
    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 809
    iget v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMinWidth:I

    iget v2, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 810
    iget v3, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMinHeight:I

    iget v2, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 812
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->updateDrawableState()V

    .line 813
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getPaddingRight()I

    move-result v3

    add-int/2addr v4, v3

    add-int v4, v1, v4

    .line 814
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getPaddingBottom()I

    move-result v1

    add-int/2addr v3, v1

    add-int v3, v2, v3

    .line 816
    invoke-static {v4, p1}, Landroid/support/v7/internal/widget/ProgressBarICS;->resolveSize(II)I

    move-result v4

    invoke-static {v3, p2}, Landroid/support/v7/internal/widget/ProgressBarICS;->resolveSize(II)I

    move-result v3

    invoke-virtual {p0, v4, v3}, Landroid/support/v7/internal/widget/ProgressBarICS;->setMeasuredDimension(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 818
    monitor-exit p0

    return-void

    .line 804
    :catch_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    move-object v1, p1

    check-cast v1, Landroid/support/v7/internal/widget/ProgressBarICS$SavedState;

    move-object v0, v1

    .line 892
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ProgressBarICS$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 894
    iget v2, v0, Landroid/support/v7/internal/widget/ProgressBarICS$SavedState;->progress:I

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/ProgressBarICS;->setProgress(I)V

    .line 895
    iget v2, v0, Landroid/support/v7/internal/widget/ProgressBarICS$SavedState;->secondaryProgress:I

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/ProgressBarICS;->setSecondaryProgress(I)V

    .line 896
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 880
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 881
    new-instance v1, Landroid/support/v7/internal/widget/ProgressBarICS$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v7/internal/widget/ProgressBarICS$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 883
    iget v2, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mProgress:I

    iput v2, v1, Landroid/support/v7/internal/widget/ProgressBarICS$SavedState;->progress:I

    .line 884
    iget v2, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mSecondaryProgress:I

    iput v2, v1, Landroid/support/v7/internal/widget/ProgressBarICS$SavedState;->secondaryProgress:I

    .line 886
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 727
    invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/widget/ProgressBarICS;->updateDrawableBounds(II)V

    .line 728
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    .line 697
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 699
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminate:Z

    if-eqz v0, :cond_1

    .line 699
    const/16 v1, 0x8

    if-eq p2, v1, :cond_0

    .line 699
    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    .line 702
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->stopAnimation()V

    .line 707
    :cond_1
    :goto_0
    return-void

    .line 704
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->startAnimation()V

    goto :goto_0
.end method

.method public postInvalidate()V
    .locals 1

    .line 385
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mNoInvalidate:Z

    if-nez v0, :cond_0

    .line 386
    invoke-super {p0}, Landroid/view/View;->postInvalidate()V

    .line 388
    :cond_0
    return-void
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .locals 3

    .line 275
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mOnlyIndeterminate:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminate:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminate:Z

    if-eq p1, v0, :cond_1

    .line 276
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminate:Z

    if-eqz p1, :cond_2

    .line 280
    iget-object v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 281
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->startAnimation()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 283
    :cond_2
    :try_start_1
    iget-object v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 284
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->stopAnimation()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 275
    :catch_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 313
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 315
    :cond_0
    iput-object p1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 316
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminate:Z

    if-eqz v0, :cond_1

    .line 317
    iput-object p1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 318
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->postInvalidate()V

    .line 320
    :cond_1
    return-void
.end method

.method public setInterpolator(Landroid/content/Context;I)V
    .locals 1

    .line 657
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ProgressBarICS;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 658
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 667
    iput-object p1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 668
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 4

    .line 573
    monitor-enter p0

    if-gez p1, :cond_0

    .line 574
    const/4 p1, 0x0

    .line 576
    :cond_0
    :try_start_0
    iget v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMax:I

    if-eq p1, v0, :cond_2

    .line 577
    iput p1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMax:I

    .line 578
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->postInvalidate()V

    .line 580
    iget v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mProgress:I

    if-le v0, p1, :cond_1

    .line 581
    iput p1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mProgress:I

    :cond_1
    iget v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mProgress:I

    const v1, 0x102000d

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Landroid/support/v7/internal/widget/ProgressBarICS;->refreshProgress(IIZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    :cond_2
    monitor-exit p0

    return-void

    .line 573
    :catch_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized setProgress(I)V
    .locals 2

    .line 465
    monitor-enter p0

    .line 465
    :try_start_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/internal/widget/ProgressBarICS;->setProgress(IZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    monitor-exit p0

    return-void

    .line 465
    :catch_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized setProgress(IZ)V
    .locals 4

    .line 469
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminate:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    .line 485
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    if-gez p1, :cond_2

    .line 474
    const/4 p1, 0x0

    .line 477
    :cond_2
    :try_start_1
    iget v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMax:I

    if-le p1, v1, :cond_3

    .line 478
    iget p1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMax:I

    .line 481
    :cond_3
    iget v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mProgress:I

    if-eq p1, v1, :cond_0

    .line 482
    iput p1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mProgress:I

    iget p1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mProgress:I

    const v2, 0x102000d

    invoke-direct {p0, v2, p1, p2}, Landroid/support/v7/internal/widget/ProgressBarICS;->refreshProgress(IIZ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 469
    :catch_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 9

    .line 346
    iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_3

    .line 347
    iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 347
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 348
    const/4 v2, 0x1

    :goto_0
    if-eqz p1, :cond_0

    .line 354
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 357
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    .line 358
    iget v4, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMaxHeight:I

    if-ge v4, v3, :cond_0

    .line 359
    iput v3, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMaxHeight:I

    .line 360
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->requestLayout()V

    .line 363
    :cond_0
    iput-object p1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 364
    iget-boolean v5, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminate:Z

    if-nez v5, :cond_1

    .line 365
    iput-object p1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 366
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->postInvalidate()V

    :cond_1
    if-eqz v2, :cond_2

    .line 370
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getHeight()I

    move-result v3

    invoke-direct {p0, v4, v3}, Landroid/support/v7/internal/widget/ProgressBarICS;->updateDrawableBounds(II)V

    .line 371
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->updateDrawableState()V

    iget v3, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mProgress:I

    const v6, 0x102000d

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v3, v7, v8}, Landroid/support/v7/internal/widget/ProgressBarICS;->doRefreshProgress(IIZZ)V

    iget v3, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mSecondaryProgress:I

    const v6, 0x102000f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v3, v7, v8}, Landroid/support/v7/internal/widget/ProgressBarICS;->doRefreshProgress(IIZZ)V

    .line 375
    :cond_2
    return-void

    .line 350
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public declared-synchronized setSecondaryProgress(I)V
    .locals 5

    .line 500
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminate:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    .line 516
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    if-gez p1, :cond_2

    .line 505
    const/4 p1, 0x0

    .line 508
    :cond_2
    :try_start_1
    iget v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMax:I

    if-le p1, v1, :cond_3

    .line 509
    iget p1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMax:I

    .line 512
    :cond_3
    iget v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mSecondaryProgress:I

    if-eq p1, v1, :cond_0

    .line 513
    iput p1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mSecondaryProgress:I

    iget p1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mSecondaryProgress:I

    const v2, 0x102000f

    const/4 v3, 0x0

    invoke-direct {p0, v2, p1, v3}, Landroid/support/v7/internal/widget/ProgressBarICS;->refreshProgress(IIZ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 500
    :catch_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public setVisibility(I)V
    .locals 3

    .line 681
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 682
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 684
    iget-boolean v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminate:Z

    if-eqz v1, :cond_1

    .line 684
    const/16 v2, 0x8

    if-eq p1, v2, :cond_0

    .line 684
    const/4 v2, 0x4

    if-ne p1, v2, :cond_2

    .line 687
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->stopAnimation()V

    .line 693
    :cond_1
    :goto_0
    return-void

    .line 689
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->startAnimation()V

    goto :goto_0
.end method

.method startAnimation()V
    .locals 15

    .line 613
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    :goto_0
    return-void

    .line 617
    :cond_0
    iget-object v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Landroid/graphics/drawable/Animatable;

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mShouldStartAnimationDrawable:Z

    const/4 v4, 0x0

    iput-object v4, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mAnimation:Landroid/view/animation/AlphaAnimation;

    .line 633
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->postInvalidate()V

    goto :goto_0

    .line 621
    :cond_1
    iget-object v5, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v5, :cond_2

    .line 622
    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v6, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 625
    :cond_2
    new-instance v7, Landroid/view/animation/Transformation;

    invoke-direct {v7}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v7, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mTransformation:Landroid/view/animation/Transformation;

    .line 626
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    .line 626
    const/4 v9, 0x0

    .line 626
    const v10, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v8, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mAnimation:Landroid/view/animation/AlphaAnimation;

    .line 627
    iget-object v8, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mBehavior:I

    invoke-virtual {v8, v0}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 628
    iget-object v8, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mAnimation:Landroid/view/animation/AlphaAnimation;

    .line 628
    const/4 v3, -0x1

    invoke-virtual {v8, v3}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 629
    iget-object v8, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mDuration:I

    int-to-long v11, v0

    invoke-virtual {v8, v11, v12}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 630
    iget-object v8, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v5, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v5}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 631
    iget-object v8, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mAnimation:Landroid/view/animation/AlphaAnimation;

    .line 631
    const-wide/16 v13, -0x1

    invoke-virtual {v8, v13, v14}, Landroid/view/animation/AlphaAnimation;->setStartTime(J)V

    goto :goto_1
.end method

.method stopAnimation()V
    .locals 6

    .line 640
    const/4 v0, 0x0

    .line 640
    iput-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mAnimation:Landroid/view/animation/AlphaAnimation;

    .line 641
    const/4 v0, 0x0

    .line 641
    iput-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mTransformation:Landroid/view/animation/Transformation;

    .line 642
    iget-object v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Landroid/graphics/drawable/Animatable;

    if-eqz v2, :cond_0

    .line 643
    iget-object v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    move-object v4, v1

    check-cast v4, Landroid/graphics/drawable/Animatable;

    move-object v3, v4

    invoke-interface {v3}, Landroid/graphics/drawable/Animatable;->stop()V

    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mShouldStartAnimationDrawable:Z

    .line 646
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->postInvalidate()V

    .line 647
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 3

    .line 379
    iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method
