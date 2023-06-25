.class public Landroid/support/v4/widget/SlidingPaneLayout;
.super Landroid/view/ViewGroup;
.source "SlidingPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/SlidingPaneLayout$1;,
        Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;,
        Landroid/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;,
        Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJBMR1;,
        Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;,
        Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;,
        Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;,
        Landroid/support/v4/widget/SlidingPaneLayout$SavedState;,
        Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;,
        Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;,
        Landroid/support/v4/widget/SlidingPaneLayout$SimplePanelSlideListener;,
        Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_FADE_COLOR:I = -0x33333334

.field private static final DEFAULT_OVERHANG_SIZE:I = 0x20

.field static final IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field private static final TAG:Ljava/lang/String; = "SlidingPaneLayout"


# instance fields
.field private mCanSlide:Z

.field private mCoveredFadeColor:I

.field private final mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

.field private mFirstLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mIsUnableToDrag:Z

.field private final mOverhangSize:I

.field private mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

.field private mParallaxBy:I

.field private mParallaxOffset:F

.field private final mPostedRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private mPreservedOpenState:Z

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mSlideOffset:F

.field private mSlideRange:I

.field private mSlideableView:Landroid/view/View;

.field private mSliderFadeColor:I

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 192
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 192
    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 194
    new-instance v2, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJBMR1;

    invoke-direct {v2}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJBMR1;-><init>()V

    sput-object v2, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    .line 200
    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 196
    new-instance v3, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;

    invoke-direct {v3}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;-><init>()V

    sput-object v3, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    goto :goto_0

    .line 198
    :cond_1
    new-instance v4, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;

    invoke-direct {v4}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;-><init>()V

    sput-object v4, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 245
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 249
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    .line 252
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, -0x33333334

    iput v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    .line 182
    const/4 v0, 0x1

    .line 182
    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 184
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 186
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    .line 254
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v5, v4, Landroid/util/DisplayMetrics;->density:F

    const v7, 0x42000000    # 32.0f

    mul-float v6, v7, v5

    const v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int p3, v6

    iput p3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mOverhangSize:I

    .line 257
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->setWillNotDraw(Z)V

    .line 261
    new-instance v8, Landroid/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;

    invoke-direct {v8, p0}, Landroid/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;)V

    invoke-static {p0, v8}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    const/4 v0, 0x1

    move p3, v0

    .line 262
    invoke-static {p0, p3}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 264
    new-instance v9, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;

    .line 264
    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/support/v4/widget/SlidingPaneLayout$1;)V

    const v7, 0x3f000000    # 0.5f

    invoke-static {p0, v7, v9}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v11

    iput-object v11, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    .line 265
    iget-object v11, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v0, 0x1

    move p3, v0

    invoke-virtual {v11, p3}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 266
    iget-object v11, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    const v7, 0x43c80000    # 400.0f

    mul-float v6, v7, v5

    invoke-virtual {v11, v6}, Landroid/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 267
    return-void
.end method

.method static synthetic access$100(Landroid/support/v4/widget/SlidingPaneLayout;)Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    return v0
.end method

.method static synthetic access$1000(Landroid/support/v4/widget/SlidingPaneLayout;)Ljava/util/ArrayList;
    .locals 1

    .line 88
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/support/v4/widget/ViewDragHelper;
    .locals 1

    .line 88
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v4/widget/SlidingPaneLayout;)F
    .locals 1

    .line 88
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    return v0
.end method

.method static synthetic access$400(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/view/View;
    .locals 1

    .line 88
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$502(Landroid/support/v4/widget/SlidingPaneLayout;Z)Z
    .locals 0

    .line 88
    iput-boolean p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    return p1
.end method

.method static synthetic access$600(Landroid/support/v4/widget/SlidingPaneLayout;I)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->onPanelDragged(I)V

    return-void
.end method

.method static synthetic access$700(Landroid/support/v4/widget/SlidingPaneLayout;)I
    .locals 1

    .line 88
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    return v0
.end method

.method static synthetic access$900(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->invalidateChildRegion(Landroid/view/View;)V

    return-void
.end method

.method private closePane(Landroid/view/View;I)Z
    .locals 4

    const/4 v0, 0x0

    .line 830
    iget-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    if-nez v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p2}, Landroid/support/v4/widget/SlidingPaneLayout;->smoothSlideTo(FI)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 831
    :cond_0
    const/4 v3, 0x0

    .line 831
    iput-boolean v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 832
    const/4 v0, 0x1

    .line 834
    :cond_1
    return v0
.end method

.method private dimChildView(Landroid/view/View;FI)V
    .locals 17

    move-object/from16 v0, p1

    .line 933
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    move-object v3, v4

    const/4 v6, 0x0

    cmpl-float v5, p2, v6

    if-lez v5, :cond_3

    if-eqz p3, :cond_3

    const v8, -0x1000000

    and-int v7, v8, p3

    ushr-int/lit8 v7, v7, 0x18

    .line 937
    int-to-float v9, v7

    mul-float v9, v9, p2

    float-to-int v7, v9

    .line 938
    shl-int/lit8 v10, v7, 0x18

    const v8, 0xffffff

    and-int v7, v8, p3

    or-int v7, v10, v7

    .line 939
    iget-object v11, v3, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    if-nez v11, :cond_0

    .line 940
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    iput-object v11, v3, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    .line 942
    :cond_0
    iget-object v11, v3, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    new-instance v12, Landroid/graphics/PorterDuffColorFilter;

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v12, v7, v13}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-object/from16 v0, p1

    .line 943
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getLayerType(Landroid/view/View;)I

    move-result v10

    .line 943
    const/4 v8, 0x2

    if-eq v10, v8, :cond_1

    .line 944
    iget-object v11, v3, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    .line 944
    const/4 v8, 0x2

    move-object/from16 v0, p1

    invoke-static {v0, v8, v11}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 946
    invoke-direct {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->invalidateChildRegion(Landroid/view/View;)V

    .line 955
    :cond_2
    :goto_0
    return-void

    :cond_3
    move-object/from16 v0, p1

    .line 947
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getLayerType(Landroid/view/View;)I

    move-result v10

    if-eqz v10, :cond_2

    .line 948
    iget-object v11, v3, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    if-eqz v11, :cond_4

    .line 949
    iget-object v11, v3, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    .line 949
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 951
    :cond_4
    new-instance v15, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v15, v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V

    move-object/from16 v0, p0

    .line 952
    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    .line 953
    invoke-static {v0, v15}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private invalidateChildRegion(Landroid/view/View;)V
    .locals 1

    .line 999
    sget-object v0, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;->invalidateChildRegion(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V

    .line 1000
    return-void
.end method

.method private onPanelDragged(I)V
    .locals 10

    .line 911
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 930
    :goto_0
    return-void

    .line 917
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    move-object v3, v4

    .line 918
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v5

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v6, v5, v6

    .line 920
    sub-int v5, p1, v6

    int-to-float v7, v5

    iget v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v8, v5

    div-float v8, v7, v8

    iput v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 922
    iget v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    if-eqz v5, :cond_1

    .line 923
    iget v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    invoke-direct {p0, v8}, Landroid/support/v4/widget/SlidingPaneLayout;->parallaxOtherViews(F)V

    .line 926
    :cond_1
    iget-boolean v9, v3, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v9, :cond_2

    .line 927
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    iget v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    iget v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    invoke-direct {p0, v0, v8, v6}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    .line 929
    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->dispatchOnPanelSlide(Landroid/view/View;)V

    goto :goto_0
.end method

.method private openPane(Landroid/view/View;I)Z
    .locals 3

    .line 838
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    if-nez v0, :cond_0

    const v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1, p2}, Landroid/support/v4/widget/SlidingPaneLayout;->smoothSlideTo(FI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 839
    :cond_0
    const/4 v2, 0x1

    .line 839
    iput-boolean v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 839
    const/4 v2, 0x1

    .line 842
    return v2

    .line 839
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private parallaxOtherViews(F)V
    .locals 13

    .line 1079
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    move-object v2, v3

    .line 1080
    iget-boolean v4, v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v4, :cond_1

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-gtz v5, :cond_1

    const/4 v4, 0x1

    .line 1081
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v6

    .line 1082
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_3

    .line 1083
    invoke-virtual {p0, v7}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1084
    iget-object v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-ne v0, v8, :cond_2

    .line 1082
    :cond_0
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1080
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 1086
    :cond_2
    iget v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxOffset:F

    const v10, 0x3f800000    # 1.0f

    sub-float v9, v10, v9

    iget v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    int-to-float v11, v5

    mul-float v11, v9, v11

    float-to-int v5, v11

    .line 1087
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxOffset:F

    .line 1088
    const v10, 0x3f800000    # 1.0f

    .line 1088
    sub-float v11, v10, p1

    iget v12, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    int-to-float v9, v12

    mul-float/2addr v11, v9

    float-to-int v12, v11

    .line 1089
    sub-int v12, v5, v12

    .line 1091
    invoke-virtual {v0, v12}, Landroid/view/View;->offsetLeftAndRight(I)V

    if-eqz v4, :cond_0

    .line 1094
    iget v11, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxOffset:F

    const v10, 0x3f800000    # 1.0f

    sub-float v11, v10, v11

    iget v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    invoke-direct {p0, v0, v11, v5}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    goto :goto_2

    .line 1097
    :cond_3
    return-void
.end method

.method private static viewIsOpaque(Landroid/view/View;)Z
    .locals 4

    .line 398
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isOpaque(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 398
    :cond_0
    const/4 v1, 0x1

    .line 409
    return v1

    .line 403
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 403
    const/16 v1, 0x12

    if-lt v2, v1, :cond_2

    .line 403
    const/4 v1, 0x0

    return v1

    .line 405
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 407
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    .line 407
    const/4 v1, -0x1

    if-eq v2, v1, :cond_0

    .line 407
    const/4 v1, 0x0

    return v1

    .line 407
    :cond_3
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 17

    move-object/from16 v0, p1

    instance-of v6, v0, Landroid/view/ViewGroup;

    if-eqz v6, :cond_1

    move-object/from16 v8, p1

    .line 1112
    check-cast v8, Landroid/view/ViewGroup;

    .line 1112
    move-object v7, v8

    move-object/from16 v0, p1

    .line 1113
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v9

    move-object/from16 v0, p1

    .line 1114
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 1115
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    .line 1117
    add-int/lit8 v12, v11, -0x1

    :goto_0
    if-ltz v12, :cond_1

    .line 1120
    invoke-virtual {v7, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1121
    add-int v11, p4, v9

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v14

    if-lt v11, v14, :cond_0

    add-int v11, p4, v9

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v14

    if-ge v11, v14, :cond_0

    add-int v11, p5, v10

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v14

    if-lt v11, v14, :cond_0

    add-int v11, p5, v10

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v14

    if-ge v11, v14, :cond_0

    add-int v11, p4, v9

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v14

    sub-int v14, v11, v14

    add-int v11, p5, v10

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int/2addr v11, v15

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v2, v16

    move/from16 v3, p3

    move v4, v14

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/SlidingPaneLayout;->canScroll(Landroid/view/View;ZIII)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v16, 0x1

    .line 1130
    return v16

    .line 1117
    :cond_0
    add-int/lit8 v12, v12, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move/from16 v0, p3

    neg-int v15, v0

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v16, 0x1

    return v16

    :cond_2
    const/16 v16, 0x0

    return v16
.end method

.method public canSlide()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 897
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 2

    instance-of v0, p1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public closePane()Z
    .locals 3

    .line 878
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane(Landroid/view/View;I)Z

    move-result v1

    return v1
.end method

.method public computeScroll()V
    .locals 3

    .line 1029
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1030
    iget-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v1, :cond_1

    .line 1031
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->abort()V

    .line 1037
    :cond_0
    :goto_0
    return-void

    .line 1035
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0
.end method

.method dispatchOnPanelClosed(Landroid/view/View;)V
    .locals 2

    .line 341
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;->onPanelClosed(Landroid/view/View;)V

    .line 342
    :cond_0
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->sendAccessibilityEvent(I)V

    .line 345
    return-void
.end method

.method dispatchOnPanelOpened(Landroid/view/View;)V
    .locals 2

    .line 334
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;->onPanelOpened(Landroid/view/View;)V

    .line 335
    :cond_0
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->sendAccessibilityEvent(I)V

    .line 338
    return-void
.end method

.method dispatchOnPanelSlide(Landroid/view/View;)V
    .locals 2

    .line 328
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    iget v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    invoke-interface {v0, p1, v1}, Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;->onPanelSlide(Landroid/view/View;F)V

    .line 331
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1061
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1063
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v0

    .line 1063
    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2

    .line 1076
    :cond_0
    :goto_1
    return-void

    .line 1063
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1069
    :cond_2
    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 1070
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 1071
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 1072
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 1073
    sub-int v4, v5, v4

    .line 1074
    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1075
    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 26

    move-object/from16 v0, p2

    .line 959
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    move-object v7, v8

    const/4 v10, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->save(I)I

    move-result v9

    move-object/from16 v0, p0

    .line 963
    iget-boolean v11, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v11, :cond_0

    iget-boolean v11, v7, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    if-nez v11, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    .line 965
    iget-object v13, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p0

    .line 966
    iget-object v14, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v15, v13, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v16

    move/from16 v0, v16

    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v14, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    .line 967
    iget-object v14, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 970
    :cond_0
    sget v16, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 970
    const/16 v10, 0xb

    move/from16 v0, v16

    if-lt v0, v10, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    .line 971
    invoke-super {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v11

    :goto_0
    move-object/from16 v0, p1

    .line 993
    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 995
    return v11

    .line 973
    :cond_1
    iget-boolean v11, v7, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    move/from16 v17, v0

    const/16 v19, 0x0

    cmpl-float v18, v17, v19

    if-lez v18, :cond_4

    move-object/from16 v0, p2

    .line 974
    invoke-virtual {v0}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v11

    if-nez v11, :cond_2

    .line 974
    const/4 v10, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    :cond_2
    move-object/from16 v0, p2

    .line 977
    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v20

    if-eqz v20, :cond_3

    move-object/from16 v0, p2

    .line 979
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    iget-object v0, v7, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v17

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 980
    const/4 v11, 0x0

    goto :goto_0

    :cond_3
    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v0, v23

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "drawChild: child view "

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " returned null drawing cache"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const-string v24, "SlidingPaneLayout"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    .line 983
    invoke-super {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v11

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p2

    .line 986
    invoke-virtual {v0}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 986
    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    .line 989
    invoke-super {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v11

    goto/16 :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1143
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    invoke-direct {v0}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1160
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v2, v3

    invoke-direct {v1, v2}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v1

    :cond_0
    new-instance v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    invoke-direct {v1, p1}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method public getCoveredFadeColor()I
    .locals 1

    .line 320
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    return v0
.end method

.method public getParallaxDistance()I
    .locals 1

    .line 287
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    return v0
.end method

.method public getSliderFadeColor()I
    .locals 1

    .line 303
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    return v0
.end method

.method isDimmed(Landroid/view/View;)Z
    .locals 8

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 1138
    return v0

    .line 1137
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    move-object v2, v3

    .line 1138
    iget-boolean v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v4, :cond_0

    iget-boolean v4, v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v4, :cond_0

    iget v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    const/4 v7, 0x0

    cmpl-float v6, v5, v7

    if-lez v6, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method public isOpen()Z
    .locals 5

    .line 888
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v0, :cond_0

    iget v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    const v3, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v3

    if-nez v2, :cond_1

    :cond_0
    const/4 v4, 0x1

    return v4

    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method public isSlideable()Z
    .locals 1

    .line 907
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 414
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 416
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 7

    .line 420
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 423
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v1, v3, :cond_0

    .line 424
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;

    move-object v5, v6

    .line 425
    invoke-virtual {v5}, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;->run()V

    .line 423
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 427
    :cond_0
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 428
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 730
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 733
    iget-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 737
    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v2, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v7, v6

    invoke-virtual {v5, v4, v2, v7}, Landroid/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 742
    :cond_0
    iget-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 743
    :cond_1
    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v5}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 744
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 785
    return v1

    .line 737
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 737
    :cond_3
    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    .line 737
    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    .line 748
    :cond_4
    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v5}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 748
    const/4 v3, 0x0

    return v3

    .line 752
    :cond_5
    const/4 v1, 0x0

    .line 783
    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 783
    :cond_6
    :goto_1
    :sswitch_0
    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v5, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    if-nez v8, :cond_7

    if-eqz v1, :cond_8

    :cond_7
    const/4 v3, 0x1

    return v3

    :sswitch_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    .line 757
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 758
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 759
    iput v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    .line 760
    iput v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    .line 762
    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    float-to-int v2, v6

    float-to-int v7, v9

    invoke-virtual {v5, v4, v2, v7}, Landroid/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, v4}, Landroid/support/v4/widget/SlidingPaneLayout;->isDimmed(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 764
    const/4 v1, 0x1

    goto :goto_1

    .line 770
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 771
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    .line 772
    iget v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    sub-float/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 773
    iget v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    sub-float/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 774
    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v5}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v0

    .line 775
    int-to-float v10, v0

    cmpl-float v11, v9, v10

    if-lez v11, :cond_6

    cmpl-float v11, v6, v9

    if-lez v11, :cond_6

    .line 776
    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v5}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    const/4 v3, 0x0

    return v3

    :cond_8
    const/4 v3, 0x0

    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 20

    .line 640
    sub-int v3, p4, p2

    move-object/from16 v0, p0

    .line 641
    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v4

    move-object/from16 v0, p0

    .line 642
    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v5

    move-object/from16 v0, p0

    .line 643
    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v6

    move-object/from16 v0, p0

    .line 645
    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result p4

    .line 646
    move v7, v4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    move/from16 p1, v0

    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    move/from16 p1, v0

    if-eqz p1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    move/from16 p1, v0

    if-eqz p1, :cond_1

    const v8, 0x3f800000    # 1.0f

    :goto_0
    move-object/from16 v0, p0

    iput v8, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 653
    :cond_0
    const/4 v9, 0x0

    :goto_1
    move/from16 v0, p4

    if-ge v9, v0, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 656
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result p5

    .line 656
    const/16 v11, 0x8

    move/from16 v0, p5

    if-ne v0, v11, :cond_2

    .line 653
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 650
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 660
    :cond_2
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    move-object/from16 v14, v12

    check-cast v14, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    move-object/from16 v13, v14

    .line 662
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    const/16 p2, 0x0

    .line 665
    iget-boolean v0, v13, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    move/from16 p1, v0

    if-eqz p1, :cond_4

    .line 666
    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 p3, v0

    iget v15, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int p3, p3, v15

    .line 667
    sub-int v15, v3, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mOverhangSize:I

    move/from16 v16, v0

    sub-int v16, v15, v16

    move/from16 v0, v16

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v16

    sub-int v16, v16, v7

    sub-int p3, v16, p3

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    .line 670
    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v16, v0

    add-int v16, v16, v7

    add-int v16, v16, p3

    div-int/lit8 v15, p5, 0x2

    add-int v16, v16, v15

    sub-int v15, v3, v5

    move/from16 v0, v16

    if-le v0, v15, :cond_3

    const/16 p1, 0x1

    :goto_3
    move/from16 v0, p1

    iput-boolean v0, v13, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    move/from16 v0, p3

    int-to-float v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    move/from16 v17, v0

    mul-float v17, v8, v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 p3, v0

    .line 673
    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v16, v0

    add-int v16, v16, p3

    add-int v7, v7, v16

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v8, v0

    div-float v17, v17, v8

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 682
    :goto_4
    sub-int p3, v7, p2

    .line 683
    add-int p2, p3, p5

    .line 685
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int p5, v6, v16

    move/from16 v0, p3

    move/from16 v1, p2

    move/from16 v2, p5

    invoke-virtual {v10, v0, v6, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 688
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v16

    add-int v4, v4, v16

    goto/16 :goto_2

    :cond_3
    const/16 p1, 0x0

    goto :goto_3

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    move/from16 p1, v0

    if-eqz p1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    move/from16 v16, v0

    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    const v18, 0x3f800000    # 1.0f

    sub-float v17, v18, v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v8, v0

    mul-float v17, v17, v8

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 p2, v0

    .line 677
    move v7, v4

    goto :goto_4

    .line 679
    :cond_5
    move v7, v4

    goto :goto_4

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    move/from16 p1, v0

    if-eqz p1, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    move/from16 p1, v0

    if-eqz p1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    move/from16 v16, v0

    if-eqz v16, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->parallaxOtherViews(F)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    move-object/from16 v19, v12

    check-cast v19, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    move-object/from16 v13, v19

    iget-boolean v0, v13, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    move/from16 p1, v0

    if-eqz p1, :cond_8

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    move/from16 p5, v0

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v10, v8, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/v4/widget/SlidingPaneLayout;->updateObscuredViewsVisibility(Landroid/view/View;)V

    :cond_9
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 709
    return-void

    :cond_a
    const/16 v16, 0x0

    :goto_5
    move/from16 v0, v16

    move/from16 v1, p4

    if-ge v0, v1, :cond_8

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v10, v1, v15}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    .line 701
    add-int/lit8 v16, v16, 0x1

    goto :goto_5
.end method

.method protected onMeasure(II)V
    .locals 34

    move/from16 v0, p1

    .line 432
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    move/from16 v0, p1

    .line 433
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    move/from16 v0, p2

    .line 434
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    move/from16 v0, p2

    .line 435
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 435
    const v7, 0x40000000    # 2.0f

    if-eq v3, v7, :cond_5

    move-object/from16 v0, p0

    .line 438
    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->isInEditMode()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 438
    const v7, -0x80000000

    if-ne v3, v7, :cond_3

    .line 466
    :cond_0
    :goto_0
    const/4 v9, 0x0

    .line 467
    const/4 v3, -0x1

    .line 477
    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    .line 477
    :goto_1
    const/4 v10, 0x0

    .line 478
    const/4 v11, 0x0

    move-object/from16 v0, p0

    .line 479
    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v12

    sub-int v13, v4, v12

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v12

    sub-int v12, v13, v12

    move-object/from16 v0, p0

    .line 480
    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result p1

    .line 480
    const/4 v7, 0x2

    move/from16 v0, p1

    if-le v0, v7, :cond_1

    .line 480
    const-string v14, "SlidingPaneLayout"

    .line 480
    const-string v15, "onMeasure: More than two child views are not supported."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 491
    const/4 v13, 0x0

    :goto_2
    move/from16 v0, p1

    if-ge v13, v0, :cond_f

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    .line 493
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v20, v18

    check-cast v20, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    move-object/from16 v19, v20

    move-object/from16 v0, v17

    .line 495
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    .line 495
    const/16 v7, 0x8

    if-ne v6, v7, :cond_7

    const/4 v7, 0x0

    move-object/from16 v0, v19

    iput-boolean v7, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    .line 491
    :cond_2
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_3
    if-nez v3, :cond_0

    .line 447
    const/16 v4, 0x12c

    goto :goto_0

    .line 450
    :cond_4
    new-instance v21, Ljava/lang/IllegalStateException;

    .line 450
    const-string v14, "Width must have an exact value or MATCH_PARENT"

    move-object/from16 v0, v21

    invoke-direct {v0, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v21

    :cond_5
    if-nez v5, :cond_0

    move-object/from16 v0, p0

    .line 453
    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->isInEditMode()Z

    move-result v8

    if-eqz v8, :cond_6

    if-nez v5, :cond_0

    .line 458
    const v5, -0x80000000

    .line 459
    const/16 v6, 0x12c

    goto :goto_0

    .line 462
    :cond_6
    new-instance v21, Ljava/lang/IllegalStateException;

    .line 462
    const-string v14, "Height must not be UNSPECIFIED"

    move-object/from16 v0, v21

    invoke-direct {v0, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v21

    :sswitch_0
    move-object/from16 v0, p0

    .line 470
    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v12

    sub-int v12, v6, v12

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v3

    sub-int v3, v12, v3

    move v9, v3

    goto/16 :goto_1

    :sswitch_1
    move-object/from16 v0, p0

    .line 473
    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v12

    sub-int v12, v6, v12

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v3

    sub-int v3, v12, v3

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v22, v0

    const/16 v24, 0x0

    cmpl-float v23, v22, v24

    if-lez v23, :cond_8

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v25, v0

    add-float v10, v10, v25

    move-object/from16 v0, v19

    iget v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eqz v6, :cond_2

    :cond_8
    move-object/from16 v0, v19

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 p2, v0

    add-int v6, v6, p2

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 p2, v0

    const/4 v7, -0x2

    move/from16 v0, p2

    if-ne v0, v7, :cond_a

    .line 511
    sub-int v6, v4, v6

    const v7, -0x80000000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    :goto_4
    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 p2, v0

    const/4 v7, -0x2

    move/from16 v0, p2

    if-ne v0, v7, :cond_c

    const v7, -0x80000000

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :goto_5
    move-object/from16 v0, v17

    move/from16 v1, p2

    .line 529
    invoke-virtual {v0, v6, v1}, Landroid/view/View;->measure(II)V

    move-object/from16 v0, v17

    .line 530
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    move-object/from16 v0, v17

    .line 531
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    .line 531
    const v7, -0x80000000

    if-ne v5, v7, :cond_9

    move/from16 v0, p2

    if-le v0, v9, :cond_9

    move/from16 v0, p2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 537
    :cond_9
    sub-int/2addr v12, v6

    if-gez v12, :cond_e

    const/4 v8, 0x1

    :goto_6
    move-object/from16 v0, v19

    iput-boolean v8, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    or-int/2addr v11, v8

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    goto/16 :goto_3

    :cond_a
    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v27, v0

    const/4 v7, -0x1

    move/from16 v0, v27

    if-ne v0, v7, :cond_b

    .line 514
    sub-int v27, v4, v6

    const v7, 0x40000000    # 2.0f

    move/from16 v0, v27

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_4

    :cond_b
    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v27, v0

    const v7, 0x40000000    # 2.0f

    move/from16 v0, v27

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_4

    :cond_c
    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v27, v0

    const/4 v7, -0x1

    move/from16 v0, v27

    if-ne v0, v7, :cond_d

    const v7, 0x40000000    # 2.0f

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_5

    :cond_d
    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v27, v0

    const v7, 0x40000000    # 2.0f

    move/from16 v0, v27

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto/16 :goto_5

    .line 538
    :cond_e
    const/4 v8, 0x0

    goto :goto_6

    :cond_f
    if-nez v11, :cond_10

    const/16 v24, 0x0

    cmpl-float v23, v10, v24

    if-lez v23, :cond_1e

    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mOverhangSize:I

    move/from16 v27, v0

    sub-int v6, v4, v27

    const/16 v27, 0x0

    :goto_7
    move/from16 v0, v27

    move/from16 v1, p1

    if-ge v0, v1, :cond_1e

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    .line 551
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v13

    .line 551
    const/16 v7, 0x8

    if-ne v13, v7, :cond_12

    .line 548
    :cond_11
    :goto_8
    add-int/lit8 v27, v27, 0x1

    goto :goto_7

    :cond_12
    move-object/from16 v0, v17

    .line 555
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v29, v18

    check-cast v29, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    move-object/from16 v28, v29

    move-object/from16 v0, v17

    .line 557
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v13

    .line 557
    const/16 v7, 0x8

    if-eq v13, v7, :cond_11

    move-object/from16 v0, v28

    iget v13, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-nez v13, :cond_14

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v25, v0

    const/16 v24, 0x0

    cmpl-float v23, v25, v24

    if-lez v23, :cond_14

    const/4 v8, 0x1

    :goto_9
    if-eqz v8, :cond_15

    const/4 v13, 0x0

    :goto_a
    if-eqz v11, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object/from16 v30, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_19

    move-object/from16 v0, v28

    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v5, :cond_11

    if-gt v13, v6, :cond_13

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v25, v0

    const/16 v24, 0x0

    cmpl-float v23, v25, v24

    if-lez v23, :cond_11

    :cond_13
    if-eqz v8, :cond_18

    move-object/from16 v0, v28

    iget v13, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v7, -0x2

    if-ne v13, v7, :cond_16

    const v7, -0x80000000

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    :goto_b
    const v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    move-object/from16 v0, v17

    .line 587
    invoke-virtual {v0, v5, v13}, Landroid/view/View;->measure(II)V

    goto :goto_8

    .line 561
    :cond_14
    const/4 v8, 0x0

    goto :goto_9

    :cond_15
    move-object/from16 v0, v17

    .line 562
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    goto :goto_a

    :cond_16
    move-object/from16 v0, v28

    iget v13, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v7, -0x1

    if-ne v13, v7, :cond_17

    const v7, 0x40000000    # 2.0f

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    goto :goto_b

    :cond_17
    move-object/from16 v0, v28

    iget v13, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v7, 0x40000000    # 2.0f

    invoke-static {v13, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    goto :goto_b

    :cond_18
    move-object/from16 v0, v17

    .line 582
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    const v7, 0x40000000    # 2.0f

    invoke-static {v13, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    goto :goto_b

    :cond_19
    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v25, v0

    const/16 v24, 0x0

    cmpl-float v23, v25, v24

    if-lez v23, :cond_11

    move-object/from16 v0, v28

    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-nez v5, :cond_1c

    move-object/from16 v0, v28

    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v7, -0x2

    if-ne v5, v7, :cond_1a

    const v7, -0x80000000

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v31

    :goto_c
    if-eqz v11, :cond_1d

    move-object/from16 v0, v28

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 p2, v0

    add-int v5, v5, p2

    .line 611
    sub-int v5, v4, v5

    const v7, 0x40000000    # 2.0f

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v32

    if-eq v13, v5, :cond_11

    move-object/from16 v0, v17

    move/from16 v1, v32

    move/from16 v2, v31

    .line 615
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    goto/16 :goto_8

    :cond_1a
    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v32, v0

    const/4 v7, -0x1

    move/from16 v0, v32

    if-ne v0, v7, :cond_1b

    const v7, 0x40000000    # 2.0f

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v31

    goto :goto_c

    :cond_1b
    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v32, v0

    const v7, 0x40000000    # 2.0f

    move/from16 v0, v32

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v31

    goto :goto_c

    :cond_1c
    move-object/from16 v0, v17

    .line 604
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v32

    const v7, 0x40000000    # 2.0f

    move/from16 v0, v32

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v31

    goto :goto_c

    :cond_1d
    const/4 v7, 0x0

    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v25, v0

    int-to-float v0, v5

    move/from16 v22, v0

    mul-float v25, v25, v22

    div-float v25, v25, v10

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 p2, v0

    .line 621
    add-int v32, v13, p2

    const v7, 0x40000000    # 2.0f

    move/from16 v0, v32

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v32

    move-object/from16 v0, v17

    move/from16 v1, v32

    move/from16 v2, v31

    .line 623
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    goto/16 :goto_8

    :cond_1e
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Landroid/support/v4/widget/SlidingPaneLayout;->setMeasuredDimension(II)V

    move-object/from16 v0, p0

    iput-boolean v11, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v32

    if-eqz v32, :cond_1f

    if-nez v11, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->abort()V

    .line 635
    :cond_1f
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    move-object v1, p1

    check-cast v1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    move-object v0, v1

    .line 1176
    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1178
    iget-boolean v2, v0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    if-eqz v2, :cond_0

    .line 1179
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->openPane()Z

    .line 1183
    :goto_0
    iget-boolean v2, v0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    iput-boolean v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 1184
    return-void

    .line 1181
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane()Z

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1165
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1167
    new-instance v1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1168
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isSlideable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isOpen()Z

    move-result v2

    :goto_0
    iput-boolean v2, v1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    .line 1170
    return-object v1

    .line 1168
    :cond_0
    iget-boolean v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 713
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 718
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 790
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v0, :cond_1

    .line 791
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 826
    :cond_0
    return v0

    .line 794
    :cond_1
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 796
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 797
    const/4 v0, 0x1

    .line 799
    and-int/lit16 v3, v2, 0xff

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :goto_0
    const/4 v4, 0x1

    return v4

    .line 801
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 802
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 803
    iput v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    .line 804
    iput v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    .line 804
    const/4 v4, 0x1

    return v4

    .line 809
    :sswitch_1
    iget-object v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, v7}, Landroid/support/v4/widget/SlidingPaneLayout;->isDimmed(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 810
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    .line 811
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    .line 812
    iget v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    sub-float v6, v9, v5

    .line 813
    iget v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    sub-float v5, v10, v5

    .line 814
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v2

    .line 815
    mul-float/2addr v6, v6

    mul-float/2addr v5, v5

    add-float v5, v6, v5

    mul-int v3, v2, v2

    int-to-float v6, v3

    cmpg-float v11, v5, v6

    if-gez v11, :cond_0

    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    iget-object v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    float-to-int v2, v9

    float-to-int v3, v10

    invoke-virtual {v1, v7, v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 818
    iget-object v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 818
    const/4 v4, 0x0

    invoke-direct {p0, v7, v4}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane(Landroid/view/View;I)Z

    .line 818
    const/4 v4, 0x1

    return v4

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
    .end sparse-switch
.end method

.method public openPane()Z
    .locals 3

    .line 860
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Landroid/support/v4/widget/SlidingPaneLayout;->openPane(Landroid/view/View;I)Z

    move-result v1

    return v1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 722
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 723
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v0, :cond_0

    .line 724
    iget-object p2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 726
    :cond_0
    return-void

    .line 724
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setAllChildrenVisible()V
    .locals 5

    .line 389
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 390
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 391
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    .line 391
    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 391
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 389
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 395
    :cond_1
    return-void
.end method

.method public setCoveredFadeColor(I)V
    .locals 0

    .line 313
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    .line 314
    return-void
.end method

.method public setPanelSlideListener(Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;)V
    .locals 0

    .line 324
    iput-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    .line 325
    return-void
.end method

.method public setParallaxDistance(I)V
    .locals 0

    .line 277
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    .line 278
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->requestLayout()V

    .line 279
    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1046
    iput-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 1047
    return-void
.end method

.method public setShadowResource(I)V
    .locals 2

    .line 1056
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1057
    return-void
.end method

.method public setSliderFadeColor(I)V
    .locals 0

    .line 296
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    .line 297
    return-void
.end method

.method public smoothSlideClosed()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 868
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane()Z

    .line 869
    return-void
.end method

.method public smoothSlideOpen()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 850
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->openPane()Z

    .line 851
    return-void
.end method

.method smoothSlideTo(FI)Z
    .locals 11

    .line 1009
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v0, :cond_1

    .line 1009
    :cond_0
    const/4 v1, 0x0

    .line 1024
    return v1

    .line 1014
    :cond_1
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    move-object v4, v5

    .line 1016
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v6

    iget p2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int p2, v6, p2

    .line 1017
    int-to-float v7, p2

    iget v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v8, v6

    mul-float/2addr v8, p1

    add-float v8, v7, v8

    float-to-int p2, v8

    .line 1019
    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    iget-object v10, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v9, v10, p2, v6}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1020
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->setAllChildrenVisible()V

    .line 1021
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    const/4 v1, 0x1

    return v1
.end method

.method updateObscuredViewsVisibility(Landroid/view/View;)V
    .locals 18

    move-object/from16 v0, p0

    .line 348
    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v1

    move-object/from16 v0, p0

    .line 349
    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v3

    sub-int v4, v2, v3

    move-object/from16 v0, p0

    .line 350
    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v2

    move-object/from16 v0, p0

    .line 351
    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v5

    sub-int v6, v3, v5

    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    invoke-static {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->viewIsOpaque(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object/from16 v0, p1

    .line 357
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    move-object/from16 v0, p1

    .line 358
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    move-object/from16 v0, p1

    .line 359
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    move-object/from16 v0, p1

    .line 360
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v9

    .line 365
    :goto_0
    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v11

    :goto_1
    if-ge v10, v11, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    move-object/from16 v0, p1

    if-ne v12, v0, :cond_2

    .line 386
    :cond_0
    return-void

    .line 362
    :cond_1
    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    goto :goto_0

    .line 373
    :cond_2
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-static {v1, v13}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 374
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    invoke-static {v2, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 375
    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v15

    invoke-static {v4, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 376
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v16

    move/from16 v0, v16

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v16

    if-lt v14, v8, :cond_3

    if-lt v13, v3, :cond_3

    if-gt v15, v5, :cond_3

    move/from16 v0, v16

    if-gt v0, v9, :cond_3

    const/16 v17, 0x4

    :goto_2
    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    .line 365
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    const/16 v17, 0x0

    goto :goto_2
.end method
