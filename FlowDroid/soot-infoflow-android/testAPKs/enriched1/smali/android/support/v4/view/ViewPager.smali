.class public Landroid/support/v4/view/ViewPager;
.super Landroid/view/ViewGroup;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/ViewPager$ViewPositionComparator;,
        Landroid/support/v4/view/ViewPager$LayoutParams;,
        Landroid/support/v4/view/ViewPager$PagerObserver;,
        Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;,
        Landroid/support/v4/view/ViewPager$SavedState;,
        Landroid/support/v4/view/ViewPager$Decor;,
        Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;,
        Landroid/support/v4/view/ViewPager$PageTransformer;,
        Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;,
        Landroid/support/v4/view/ViewPager$OnPageChangeListener;,
        Landroid/support/v4/view/ViewPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final CLOSE_ENOUGH:I = 0x2

.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/support/v4/view/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT_GUTTER_SIZE:I = 0x10

.field private static final DEFAULT_OFFSCREEN_PAGES:I = 0x1

.field private static final DRAW_ORDER_DEFAULT:I = 0x0

.field private static final DRAW_ORDER_FORWARD:I = 0x1

.field private static final DRAW_ORDER_REVERSE:I = 0x2

.field private static final INVALID_POINTER:I = -0x1

.field private static final LAYOUT_ATTRS:[I

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewPager"

.field private static final USE_CACHE:Z

.field private static final sInterpolator:Landroid/view/animation/Interpolator;

.field private static final sPositionComparator:Landroid/support/v4/view/ViewPager$ViewPositionComparator;


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Landroid/support/v4/view/PagerAdapter;

.field private mAdapterChangeListener:Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;

.field private mBottomPageBounds:I

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCloseEnough:I

.field private mCurItem:I

.field private mDecorChildCount:I

.field private mDefaultGutterSize:I

.field private mDrawingOrder:I

.field private mDrawingOrderedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private mExpectedAdapterCount:I

.field private mFakeDragBeginTime:J

.field private mFakeDragging:Z

.field private mFirstLayout:Z

.field private mFirstOffset:F

.field private mFlingDistance:I

.field private mGutterSize:I

.field private mIgnoreGutter:Z

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/view/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedCalculatePageOffsets:Z

.field private mObserver:Landroid/support/v4/view/ViewPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mPageMargin:I

.field private mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrollingCacheEnabled:Z

.field private mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

.field private final mTempItem:Landroid/support/v4/view/ViewPager$ItemInfo;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopPageBounds:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v1, 0x1

    new-array v0, v1, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/view/ViewPager;->LAYOUT_ATTRS:[I

    .line 116
    new-instance v3, Landroid/support/v4/view/ViewPager$1;

    invoke-direct {v3}, Landroid/support/v4/view/ViewPager$1;-><init>()V

    sput-object v3, Landroid/support/v4/view/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 123
    new-instance v4, Landroid/support/v4/view/ViewPager$2;

    invoke-direct {v4}, Landroid/support/v4/view/ViewPager$2;-><init>()V

    sput-object v4, Landroid/support/v4/view/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 223
    new-instance v5, Landroid/support/v4/view/ViewPager$ViewPositionComparator;

    invoke-direct {v5}, Landroid/support/v4/view/ViewPager$ViewPositionComparator;-><init>()V

    sput-object v5, Landroid/support/v4/view/ViewPager;->sPositionComparator:Landroid/support/v4/view/ViewPager$ViewPositionComparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 344
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 131
    new-instance v1, Landroid/support/v4/view/ViewPager$ItemInfo;

    invoke-direct {v1}, Landroid/support/v4/view/ViewPager$ItemInfo;-><init>()V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->mTempItem:Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 133
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 137
    const/4 v3, -0x1

    .line 137
    iput v3, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    .line 138
    const/4 v4, 0x0

    .line 138
    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 139
    const/4 v4, 0x0

    .line 139
    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    const v5, -0x800001

    iput v5, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    iput v5, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    const/4 v3, 0x1

    move v6, v3

    .line 161
    iput v6, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    .line 180
    const/4 v3, -0x1

    .line 180
    iput v3, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 207
    const/4 v3, 0x1

    .line 207
    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    .line 208
    const/4 v3, 0x0

    .line 208
    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 241
    new-instance v7, Landroid/support/v4/view/ViewPager$3;

    invoke-direct {v7, p0}, Landroid/support/v4/view/ViewPager$3;-><init>(Landroid/support/v4/view/ViewPager;)V

    iput-object v7, p0, Landroid/support/v4/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    const/4 v3, 0x0

    move v6, v3

    .line 248
    iput v6, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    .line 345
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->initViewPager()V

    .line 346
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 349
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 131
    new-instance v1, Landroid/support/v4/view/ViewPager$ItemInfo;

    invoke-direct {v1}, Landroid/support/v4/view/ViewPager$ItemInfo;-><init>()V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->mTempItem:Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 133
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 137
    const/4 v3, -0x1

    .line 137
    iput v3, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    .line 138
    const/4 v4, 0x0

    .line 138
    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 139
    const/4 v4, 0x0

    .line 139
    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    const v5, -0x800001

    iput v5, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    iput v5, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    const/4 v3, 0x1

    move v6, v3

    .line 161
    iput v6, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    .line 180
    const/4 v3, -0x1

    .line 180
    iput v3, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 207
    const/4 v3, 0x1

    .line 207
    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    .line 208
    const/4 v3, 0x0

    .line 208
    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 241
    new-instance v7, Landroid/support/v4/view/ViewPager$3;

    invoke-direct {v7, p0}, Landroid/support/v4/view/ViewPager$3;-><init>(Landroid/support/v4/view/ViewPager;)V

    iput-object v7, p0, Landroid/support/v4/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    const/4 v3, 0x0

    move v6, v3

    .line 248
    iput v6, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    .line 350
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->initViewPager()V

    .line 351
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/view/ViewPager;I)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    return-void
.end method

.method static synthetic access$200(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/PagerAdapter;
    .locals 1

    .line 84
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v4/view/ViewPager;)I
    .locals 1

    .line 84
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    return v0
.end method

.method static synthetic access$400()[I
    .locals 1

    .line 84
    sget-object v0, Landroid/support/v4/view/ViewPager;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method private calculatePageOffsets(Landroid/support/v4/view/ViewPager$ItemInfo;ILandroid/support/v4/view/ViewPager$ItemInfo;)V
    .locals 23

    move-object/from16 v0, p0

    .line 1122
    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    move-object/from16 v0, p0

    .line 1123
    invoke-direct {v0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v4

    if-lez v4, :cond_0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v6, v5

    int-to-float v7, v4

    div-float/2addr v6, v7

    :goto_0
    if-eqz p3, :cond_6

    move-object/from16 v0, p3

    iget v8, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move-object/from16 v0, p1

    .line 1129
    iget v4, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ge v8, v4, :cond_3

    .line 1130
    const/4 v5, 0x0

    move-object/from16 v0, p3

    iget v7, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    move-object/from16 v0, p3

    iget v9, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float v9, v7, v9

    add-float v7, v9, v6

    .line 1133
    add-int/lit8 v8, v8, 0x1

    :goto_1
    move-object/from16 v0, p1

    .line 1134
    iget v4, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-gt v8, v4, :cond_6

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v5, v4, :cond_6

    move-object/from16 v0, p0

    .line 1135
    iget-object v10, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v13, v11

    check-cast v13, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object v12, v13

    .line 1136
    :goto_2
    iget v4, v12, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-le v8, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v5, v4, :cond_1

    .line 1137
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    .line 1138
    iget-object v10, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v14, v11

    check-cast v14, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object/from16 v12, v14

    goto :goto_2

    .line 1124
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 1140
    :cond_1
    :goto_3
    iget v4, v12, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ge v8, v4, :cond_2

    move-object/from16 v0, p0

    .line 1143
    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2, v8}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v9

    add-float/2addr v9, v6

    add-float/2addr v7, v9

    .line 1144
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1146
    :cond_2
    iput v7, v12, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 1147
    iget v9, v12, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v6

    add-float/2addr v7, v9

    .line 1134
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v0, p1

    .line 1149
    iget v4, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-le v8, v4, :cond_6

    move-object/from16 v0, p0

    .line 1150
    iget-object v10, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p3

    iget v9, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 1153
    add-int/lit8 v5, v8, -0x1

    :goto_4
    move-object/from16 v0, p1

    .line 1154
    iget v8, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-lt v5, v8, :cond_6

    if-ltz v4, :cond_6

    move-object/from16 v0, p0

    .line 1155
    iget-object v10, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v15, v11

    check-cast v15, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object/from16 v12, v15

    .line 1156
    :goto_5
    iget v8, v12, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ge v5, v8, :cond_4

    if-lez v4, :cond_4

    .line 1157
    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    .line 1158
    iget-object v10, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v16, v11

    check-cast v16, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object/from16 v12, v16

    goto :goto_5

    .line 1160
    :cond_4
    :goto_6
    iget v8, v12, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-le v5, v8, :cond_5

    move-object/from16 v0, p0

    .line 1163
    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2, v5}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v7

    add-float/2addr v7, v6

    sub-float/2addr v9, v7

    .line 1164
    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    .line 1166
    :cond_5
    iget v7, v12, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v7, v6

    sub-float/2addr v9, v7

    .line 1167
    iput v9, v12, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 1154
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    :cond_6
    move-object/from16 v0, p0

    .line 1173
    iget-object v10, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    move-object/from16 v0, p1

    .line 1174
    iget v9, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    move-object/from16 v0, p1

    .line 1175
    iget v4, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v17, v4, -0x1

    move-object/from16 v0, p1

    .line 1176
    iget v4, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-nez v4, :cond_7

    move-object/from16 v0, p1

    iget v7, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    :goto_7
    move-object/from16 v0, p0

    iput v7, v0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    move-object/from16 v0, p1

    .line 1177
    iget v4, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v8, v3, -0x1

    if-ne v4, v8, :cond_8

    move-object/from16 v0, p1

    iget v7, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    move-object/from16 v0, p1

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v18, v0

    add-float v18, v7, v18

    const v19, 0x3f800000    # 1.0f

    sub-float v18, v18, v19

    :goto_8
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    .line 1180
    add-int/lit8 v8, p2, -0x1

    :goto_9
    if-ltz v8, :cond_b

    move-object/from16 v0, p0

    .line 1181
    iget-object v10, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v20, v11

    check-cast v20, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object/from16 v12, v20

    .line 1182
    :goto_a
    iget v4, v12, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move/from16 v0, v17

    if-le v0, v4, :cond_9

    move-object/from16 v0, p0

    .line 1183
    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v18

    add-float v18, v18, v6

    sub-float v9, v9, v18

    add-int/lit8 v17, v17, -0x1

    goto :goto_a

    .line 1176
    :cond_7
    const v7, -0x800001

    goto :goto_7

    .line 1177
    :cond_8
    const v18, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_8

    .line 1185
    :cond_9
    iget v0, v12, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v18, v0

    add-float v18, v18, v6

    sub-float v9, v9, v18

    .line 1186
    iput v9, v12, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 1187
    iget v4, v12, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-nez v4, :cond_a

    move-object/from16 v0, p0

    iput v9, v0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    .line 1180
    :cond_a
    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v17, v17, -0x1

    goto :goto_9

    :cond_b
    move-object/from16 v0, p1

    .line 1189
    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v9, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float v18, v18, v9

    add-float v18, v18, v6

    move-object/from16 v0, p1

    .line 1190
    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    .line 1192
    add-int/lit8 v4, p2, 0x1

    :goto_b
    if-ge v4, v5, :cond_e

    move-object/from16 v0, p0

    .line 1193
    iget-object v10, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v21, v11

    check-cast v21, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object/from16 v12, v21

    .line 1194
    :goto_c
    iget v8, v12, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move/from16 v0, v17

    if-ge v0, v8, :cond_c

    move-object/from16 v0, p0

    .line 1195
    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v9

    add-float/2addr v9, v6

    add-float v18, v18, v9

    add-int/lit8 v17, v17, 0x1

    goto :goto_c

    .line 1197
    :cond_c
    iget v8, v12, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 p2, v3, -0x1

    move/from16 v0, p2

    if-ne v8, v0, :cond_d

    .line 1198
    iget v9, v12, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float v9, v9, v18

    const v19, 0x3f800000    # 1.0f

    sub-float v9, v9, v19

    move-object/from16 v0, p0

    iput v9, v0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    :cond_d
    move/from16 v0, v18

    .line 1200
    iput v0, v12, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 1201
    iget v9, v12, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v6

    add-float v18, v18, v9

    .line 1192
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v17, v17, 0x1

    goto :goto_b

    :cond_e
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 1205
    return-void
.end method

.method private completeScroll(Z)V
    .locals 13

    .line 1736
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    .line 1736
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_1

    const/4 v1, 0x0

    .line 1739
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1740
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1741
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v4

    .line 1742
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v5

    .line 1743
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v6

    .line 1744
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    if-ne v4, v6, :cond_0

    if-eq v5, v0, :cond_1

    .line 1746
    :cond_0
    invoke-virtual {p0, v6, v0}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1749
    :cond_1
    const/4 v1, 0x0

    .line 1749
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 1750
    const/4 v4, 0x0

    :goto_1
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_4

    .line 1751
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object v9, v10

    .line 1752
    iget-boolean v11, v9, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    if-eqz v11, :cond_2

    .line 1753
    const/4 v2, 0x1

    .line 1754
    const/4 v1, 0x0

    .line 1754
    iput-boolean v1, v9, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    .line 1750
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 1736
    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    if-eqz p1, :cond_6

    .line 1759
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-static {p0, v12}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1764
    :cond_5
    :goto_2
    return-void

    .line 1761
    :cond_6
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {v12}, Ljava/lang/Runnable;->run()V

    goto :goto_2
.end method

.method private determineTargetPage(IFII)I
    .locals 11

    .line 2151
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Landroid/support/v4/view/ViewPager;->mFlingDistance:I

    if-le p4, v0, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget p4, p0, Landroid/support/v4/view/ViewPager;->mMinimumVelocity:I

    if-le v0, p4, :cond_2

    if-lez p3, :cond_1

    move p4, p1

    .line 2158
    :goto_0
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2159
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object v4, v5

    .line 2160
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object v7, v8

    .line 2163
    iget v0, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget p3, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    invoke-static {p4, p3}, Ljava/lang/Math;->min(II)I

    move-result p4

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 2166
    :cond_0
    return p4

    .line 2152
    :cond_1
    add-int/lit8 p4, p1, 0x1

    goto :goto_0

    .line 2154
    :cond_2
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-lt p1, v0, :cond_3

    const v9, 0x3ecccccd    # 0.4f

    .line 2155
    :goto_1
    int-to-float v10, p1

    add-float/2addr v10, p2

    add-float/2addr v10, v9

    float-to-int p4, v10

    goto :goto_0

    .line 2154
    :cond_3
    const v9, 0x3f19999a    # 0.6f

    goto :goto_1
.end method

.method private enableLayers(Z)V
    .locals 5

    .line 1771
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    .line 1772
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v2, 0x2

    .line 1775
    :goto_1
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1775
    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 1772
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1773
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 1777
    :cond_1
    return-void
.end method

.method private endDrag()V
    .locals 3

    .line 2399
    const/4 v0, 0x0

    .line 2399
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 2400
    const/4 v0, 0x0

    .line 2400
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    .line 2402
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_0

    .line 2403
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2406
    :cond_0
    return-void
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 10

    if-nez p1, :cond_0

    .line 2581
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    if-nez p2, :cond_2

    .line 2581
    const/4 v0, 0x0

    .line 2581
    const/4 v1, 0x0

    .line 2581
    const/4 v2, 0x0

    .line 2581
    const/4 v3, 0x0

    .line 2584
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2602
    :cond_1
    return-object p1

    .line 2587
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, p1, Landroid/graphics/Rect;->left:I

    .line 2588
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v4

    iput v4, p1, Landroid/graphics/Rect;->right:I

    .line 2589
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, p1, Landroid/graphics/Rect;->top:I

    .line 2590
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v4

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 2592
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    :goto_0
    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_1

    if-eq v5, p0, :cond_1

    .line 2594
    move-object v8, v5

    .line 2594
    check-cast v8, Landroid/view/ViewGroup;

    .line 2594
    move-object v7, v8

    .line 2595
    iget v9, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLeft()I

    move-result v4

    add-int/2addr v9, v4

    iput v9, p1, Landroid/graphics/Rect;->left:I

    .line 2596
    iget v9, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getRight()I

    move-result v4

    add-int/2addr v9, v4

    iput v9, p1, Landroid/graphics/Rect;->right:I

    .line 2597
    iget v9, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getTop()I

    move-result v4

    add-int/2addr v9, v4

    iput v9, p1, Landroid/graphics/Rect;->top:I

    .line 2598
    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getBottom()I

    move-result v4

    add-int/2addr v9, v4

    iput v9, p1, Landroid/graphics/Rect;->bottom:I

    .line 2600
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 2601
    goto :goto_0
.end method

.method private getClientWidth()I
    .locals 2

    .line 478
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method private infoForCurrentScrollPosition()Landroid/support/v4/view/ViewPager$ItemInfo;
    .locals 18

    const/4 v1, 0x0

    move-object/from16 v0, p0

    .line 2108
    invoke-direct {v0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v2

    if-lez v2, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v3

    int-to-float v4, v3

    int-to-float v5, v2

    div-float v5, v4, v5

    :goto_0
    if-lez v2, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v4, v3

    int-to-float v1, v2

    div-float v1, v4, v1

    .line 2111
    :cond_0
    const/4 v2, -0x1

    .line 2112
    const/4 v6, 0x0

    .line 2113
    const/4 v7, 0x0

    .line 2114
    const/4 v8, 0x1

    .line 2116
    const/4 v9, 0x0

    .line 2117
    const/4 v3, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v3, v11, :cond_4

    move-object/from16 v0, p0

    .line 2118
    iget-object v10, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v14, v12

    check-cast v14, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object v13, v14

    if-nez v8, :cond_1

    iget v11, v13, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v15, v2, 0x1

    if-eq v11, v15, :cond_1

    move-object/from16 v0, p0

    .line 2122
    iget-object v13, v0, Landroid/support/v4/view/ViewPager;->mTempItem:Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 2123
    add-float v4, v6, v7

    add-float/2addr v4, v1

    iput v4, v13, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 2124
    add-int/lit8 v15, v2, 0x1

    iput v15, v13, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move-object/from16 v0, p0

    .line 2125
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v16, v0

    iget v15, v13, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v4

    iput v4, v13, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    .line 2126
    add-int/lit8 v3, v3, -0x1

    .line 2128
    :cond_1
    iget v6, v13, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 2131
    iget v4, v13, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v4, v6

    add-float/2addr v4, v1

    if-nez v8, :cond_2

    cmpl-float v17, v5, v6

    if-ltz v17, :cond_4

    .line 2133
    :cond_2
    cmpg-float v17, v5, v4

    if-ltz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-ne v3, v15, :cond_6

    :cond_3
    move-object v9, v13

    .line 2146
    :cond_4
    return-object v9

    :cond_5
    const/4 v5, 0x0

    .line 2109
    goto :goto_0

    .line 2139
    :cond_6
    const/4 v8, 0x0

    .line 2140
    iget v2, v13, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 2142
    iget v7, v13, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    .line 2143
    move-object v9, v13

    .line 2117
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private isGutterDrag(FF)Z
    .locals 6

    .line 1767
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mGutterSize:I

    int-to-float v1, v0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_0

    const/4 v3, 0x0

    cmpl-float v2, p2, v3

    if-gtz v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v4

    iget v0, p0, Landroid/support/v4/view/ViewPager;->mGutterSize:I

    sub-int/2addr v4, v0

    int-to-float v1, v4

    cmpl-float v2, p1, v1

    if-lez v2, :cond_2

    const/4 v3, 0x0

    cmpg-float v2, p2, v3

    if-gez v2, :cond_2

    :cond_1
    const/4 v5, 0x1

    return v5

    :cond_2
    const/4 v5, 0x0

    return v5
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 6

    .line 2384
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 2385
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 2386
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_1

    const/4 v3, 0x1

    .line 2390
    :goto_0
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v4

    iput v4, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2391
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    iput v2, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 2392
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_0

    .line 2393
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    .line 2396
    :cond_0
    return-void

    .line 2389
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private pageScrolled(I)Z
    .locals 14

    const/4 v0, 0x0

    .line 1631
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 1632
    const/4 v3, 0x0

    .line 1632
    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    const/4 v3, 0x0

    move v2, v3

    const/4 v3, 0x0

    move v4, v3

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v5, v4}, Landroid/support/v4/view/ViewPager;->onPageScrolled(IFI)V

    .line 1634
    iget-boolean v6, p0, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    if-nez v6, :cond_2

    .line 1635
    new-instance v7, Ljava/lang/IllegalStateException;

    .line 1635
    const-string v8, "onPageScrolled did not call superclass implementation"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1640
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->infoForCurrentScrollPosition()Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v9

    .line 1641
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v4

    .line 1642
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    add-int v2, v4, v2

    .line 1643
    iget v10, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v11, v10

    int-to-float v12, v4

    div-float v12, v11, v12

    .line 1644
    iget v10, v9, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 1645
    int-to-float v11, p1

    int-to-float v13, v4

    div-float v13, v11, v13

    iget v11, v9, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v13, v11

    iget v11, v9, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v11, v12

    div-float v12, v13, v11

    .line 1647
    int-to-float v13, v2

    mul-float/2addr v13, v12

    float-to-int p1, v13

    .line 1649
    const/4 v3, 0x0

    .line 1649
    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    .line 1650
    invoke-virtual {p0, v10, v12, p1}, Landroid/support/v4/view/ViewPager;->onPageScrolled(IFI)V

    .line 1651
    iget-boolean v6, p0, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    if-nez v6, :cond_1

    .line 1652
    new-instance v7, Ljava/lang/IllegalStateException;

    .line 1652
    const-string v8, "onPageScrolled did not call superclass implementation"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1655
    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private performDrag(F)Z
    .locals 22

    .line 2057
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    sub-float v4, v3, p1

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    move-object/from16 v0, p0

    .line 2062
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v5

    int-to-float v0, v5

    move/from16 p1, v0

    .line 2063
    add-float v3, p1, v4

    move-object/from16 v0, p0

    .line 2064
    invoke-direct {v0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v5

    .line 2066
    int-to-float v0, v5

    move/from16 p1, v0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    mul-float v4, p1, v4

    .line 2067
    int-to-float v0, v5

    move/from16 p1, v0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    mul-float p1, p1, v6

    .line 2068
    const/4 v7, 0x1

    .line 2069
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v13, v10

    check-cast v13, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object v12, v13

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v17, v10

    check-cast v17, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object/from16 v16, v17

    .line 2073
    iget v15, v12, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-eqz v15, :cond_0

    .line 2074
    const/4 v7, 0x0

    .line 2075
    iget v6, v12, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    int-to-float v4, v5

    mul-float v4, v6, v4

    :cond_0
    move-object/from16 v0, v16

    .line 2077
    iget v15, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-eq v15, v0, :cond_1

    .line 2078
    const/4 v8, 0x0

    move-object/from16 v0, v16

    .line 2079
    iget v6, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    int-to-float v0, v5

    move/from16 p1, v0

    mul-float p1, v6, p1

    .line 2082
    :cond_1
    cmpg-float v20, v3, v4

    if-gez v20, :cond_4

    if-eqz v7, :cond_2

    .line 2084
    sub-float p1, v4, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v21, v0

    move/from16 v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    int-to-float v3, v5

    div-float/2addr v6, v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v2

    .line 2087
    :cond_2
    move v3, v4

    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    float-to-int v0, v3

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v4, v0

    sub-float v4, v3, v4

    add-float/2addr v6, v4

    move-object/from16 v0, p0

    iput v6, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2097
    float-to-int v0, v3

    move/from16 v19, v0

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v15

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 2098
    float-to-int v0, v3

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager;->pageScrolled(I)Z

    .line 2100
    return v2

    .line 2088
    :cond_4
    cmpl-float v20, v3, p1

    if-lez v20, :cond_3

    if-eqz v8, :cond_5

    .line 2090
    sub-float v6, v3, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v21, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    int-to-float v3, v5

    div-float/2addr v6, v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v2

    :cond_5
    move/from16 v3, p1

    goto :goto_0
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 16

    if-lez p2, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    move-object/from16 v0, p0

    .line 1469
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v8

    sub-int v9, p1, v8

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v8

    sub-int/2addr v9, v8

    add-int p3, v9, p3

    move-object/from16 v0, p0

    .line 1470
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v9

    sub-int v9, p2, v9

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v8

    sub-int/2addr v9, v8

    add-int v8, v9, p4

    move-object/from16 v0, p0

    .line 1472
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result p4

    move/from16 v0, p4

    .line 1473
    int-to-float v10, v0

    int-to-float v11, v8

    div-float/2addr v10, v11

    move/from16 v0, p3

    .line 1474
    int-to-float v11, v0

    mul-float v10, v11, v10

    float-to-int v0, v10

    move/from16 p4, v0

    move-object/from16 v0, p0

    .line 1476
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v9

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1, v9}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    move-object/from16 v0, p0

    .line 1477
    iget-object v12, v0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v12}, Landroid/widget/Scroller;->isFinished()Z

    move-result v7

    if-nez v7, :cond_0

    move-object/from16 v0, p0

    .line 1479
    iget-object v12, v0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v12}, Landroid/widget/Scroller;->getDuration()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v12}, Landroid/widget/Scroller;->timePassed()I

    move-result v8

    sub-int v8, v9, v8

    move-object/from16 v0, p0

    .line 1480
    iget v9, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/support/v4/view/ViewPager;->infoForPosition(I)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v13

    move-object/from16 v0, p0

    .line 1481
    iget-object v12, v0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    iget v11, v13, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    move/from16 v0, p1

    int-to-float v10, v0

    mul-float v10, v11, v10

    float-to-int v9, v10

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v0, v12

    move/from16 v1, p4

    move v2, v14

    move v3, v9

    move v4, v15

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1494
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    .line 1485
    iget v9, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/support/v4/view/ViewPager;->infoForPosition(I)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v13

    if-eqz v13, :cond_2

    iget v10, v13, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    move-object/from16 v0, p0

    iget v11, v0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    :goto_1
    move-object/from16 v0, p0

    .line 1487
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v9

    sub-int v9, p1, v9

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v8

    sub-int/2addr v9, v8

    int-to-float v11, v9

    mul-float v10, v11, v10

    float-to-int v8, v10

    move-object/from16 v0, p0

    .line 1489
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v9

    if-eq v8, v9, :cond_0

    .line 1489
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/support/v4/view/ViewPager;->completeScroll(Z)V

    move-object/from16 v0, p0

    .line 1491
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    goto :goto_0

    .line 1486
    :cond_2
    const/4 v10, 0x0

    goto :goto_1
.end method

.method private removeNonDecorViews()V
    .locals 7

    .line 454
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 455
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 456
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/support/v4/view/ViewPager$LayoutParams;

    move-object v4, v5

    .line 457
    iget-boolean v6, v4, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v6, :cond_0

    .line 458
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->removeViewAt(I)V

    .line 459
    add-int/lit8 v0, v0, -0x1

    .line 454
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 462
    :cond_1
    return-void
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .locals 1

    .line 2050
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2052
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2054
    :cond_0
    return-void
.end method

.method private scrollToItem(IZIZ)V
    .locals 9

    .line 557
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->infoForPosition(I)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v0

    .line 558
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 560
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v1

    .line 561
    int-to-float v2, v1

    iget v3, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    iget v4, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget v5, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    mul-float v5, v2, v5

    float-to-int v1, v5

    :cond_0
    if-eqz p2, :cond_3

    const/4 v7, 0x0

    move v6, v7

    .line 565
    invoke-virtual {p0, v1, v6, p3}, Landroid/support/v4/view/ViewPager;->smoothScrollTo(III)V

    if-eqz p4, :cond_1

    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v8, :cond_1

    .line 567
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v8, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_1
    if-eqz p4, :cond_2

    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v8, :cond_2

    .line 570
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v8, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 583
    :cond_2
    :goto_0
    return-void

    :cond_3
    if-eqz p4, :cond_4

    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v8, :cond_4

    .line 574
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v8, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_4
    if-eqz p4, :cond_5

    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v8, :cond_5

    .line 577
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v8, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 577
    :cond_5
    const/4 v7, 0x0

    .line 579
    invoke-direct {p0, v7}, Landroid/support/v4/view/ViewPager;->completeScroll(Z)V

    const/4 v7, 0x0

    move v6, v7

    .line 580
    invoke-virtual {p0, v1, v6}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 581
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->pageScrolled(I)Z

    goto :goto_0
.end method

.method private setScrollState(I)V
    .locals 4

    .line 388
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    iput p1, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    .line 393
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->enableLayers(Z)V

    .line 397
    :cond_2
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v3, :cond_0

    .line 398
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    goto :goto_0

    .line 395
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    .line 2409
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2410
    iput-boolean p1, p0, Landroid/support/v4/view/ViewPager;->mScrollingCacheEnabled:Z

    .line 2421
    :cond_0
    return-void
.end method

.method private sortChildDrawingOrder()V
    .locals 5

    .line 1106
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrder:I

    if-eqz v0, :cond_2

    .line 1107
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 1108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 1112
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    .line 1113
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    .line 1114
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1115
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1113
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1110
    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 1117
    :cond_1
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    sget-object v4, Landroid/support/v4/view/ViewPager;->sPositionComparator:Landroid/support/v4/view/ViewPager$ViewPositionComparator;

    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1119
    :cond_2
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 2626
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2628
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDescendantFocusability()I

    move-result v1

    .line 2628
    const v2, 0x60000

    if-eq v1, v2, :cond_1

    .line 2631
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 2632
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2633
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 2634
    invoke-virtual {p0, v5}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v6

    if-eqz v6, :cond_0

    iget v7, v6, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v4, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v7, v4, :cond_0

    .line 2636
    invoke-virtual {v5, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2631
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2631
    :cond_1
    const v2, 0x40000

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v0, v7, :cond_3

    .line 2652
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusable()Z

    move-result v8

    if-nez v8, :cond_4

    .line 2663
    :cond_3
    :goto_1
    return-void

    .line 2655
    :cond_4
    and-int/lit8 v7, p3, 0x1

    .line 2655
    const/4 v2, 0x1

    if-ne v7, v2, :cond_5

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isInTouchMode()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusableInTouchMode()Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_5
    if-eqz p1, :cond_3

    .line 2660
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method addNewItem(II)Landroid/support/v4/view/ViewPager$ItemInfo;
    .locals 5

    .line 830
    new-instance v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$ItemInfo;-><init>()V

    .line 831
    iput p1, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 832
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/view/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 833
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p1}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v3

    iput v3, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    if-ltz p2, :cond_0

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p2, p1, :cond_1

    .line 835
    :cond_0
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 839
    return-object v0

    .line 837
    :cond_1
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object v0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 2673
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2674
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2675
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 2676
    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    iget v4, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v4, v1, :cond_0

    .line 2678
    invoke-virtual {v2, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2673
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2682
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 7

    .line 1292
    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1293
    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 1295
    :cond_0
    move-object v2, p3

    .line 1295
    check-cast v2, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1295
    move-object v1, v2

    .line 1296
    iget-boolean v3, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    instance-of v0, p1, Landroid/support/v4/view/ViewPager$Decor;

    or-int/2addr v3, v0

    iput-boolean v3, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    .line 1297
    iget-boolean v3, p0, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    if-eqz v3, :cond_2

    if-eqz v1, :cond_1

    iget-boolean v3, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v3, :cond_1

    .line 1299
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 1299
    const-string v5, "Cannot add pager decor view during layout"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    const/4 v6, 0x1

    iput-boolean v6, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1302
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/view/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1314
    :goto_0
    return-void

    .line 1304
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public arrowScroll(I)Z
    .locals 17

    move-object/from16 v0, p0

    .line 2514
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    if-ne v2, v0, :cond_3

    .line 2516
    const/4 v2, 0x0

    .line 2540
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 2542
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v4, v0, v2, v1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_a

    if-eq v5, v2, :cond_a

    const/16 v6, 0x11

    move/from16 v0, p1

    if-ne v0, v6, :cond_8

    move-object/from16 v0, p0

    .line 2548
    iget-object v7, v0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v5}, Landroid/support/v4/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v7

    iget v8, v7, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    .line 2549
    iget-object v7, v0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v2}, Landroid/support/v4/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v7

    iget v9, v7, Landroid/graphics/Rect;->left:I

    if-eqz v2, :cond_7

    if-lt v8, v9, :cond_7

    move-object/from16 v0, p0

    .line 2551
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->pageLeft()Z

    move-result v3

    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    move/from16 v0, p1

    .line 2574
    invoke-static {v0}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/support/v4/view/ViewPager;->playSoundEffect(I)V

    .line 2576
    :cond_2
    return v3

    :cond_3
    if-eqz v2, :cond_0

    .line 2518
    const/4 v3, 0x0

    .line 2519
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    :goto_2
    instance-of v11, v10, Landroid/view/ViewGroup;

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    if-ne v10, v0, :cond_5

    .line 2522
    const/4 v3, 0x1

    :cond_4
    if-nez v3, :cond_0

    .line 2528
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 2529
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2530
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    :goto_3
    instance-of v11, v10, Landroid/view/ViewGroup;

    if-eqz v11, :cond_6

    const-string v16, " => "

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2531
    invoke-interface {v10}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    goto :goto_3

    .line 2520
    :cond_5
    invoke-interface {v10}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    goto :goto_2

    :cond_6
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "arrowScroll tried to find focus based on non-child current focused view "

    move-object/from16 v0, v16

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v16, "ViewPager"

    move-object/from16 v0, v16

    invoke-static {v0, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2536
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2553
    :cond_7
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    move-result v3

    goto :goto_1

    .line 2553
    :cond_8
    const/16 v6, 0x42

    move/from16 v0, p1

    if-ne v0, v6, :cond_1

    move-object/from16 v0, p0

    .line 2558
    iget-object v7, v0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v5}, Landroid/support/v4/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v7

    iget v8, v7, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    .line 2559
    iget-object v7, v0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v2}, Landroid/support/v4/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v7

    iget v9, v7, Landroid/graphics/Rect;->left:I

    if-eqz v2, :cond_9

    if-gt v8, v9, :cond_9

    move-object/from16 v0, p0

    .line 2561
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->pageRight()Z

    move-result v3

    goto/16 :goto_1

    .line 2563
    :cond_9
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    move-result v3

    goto/16 :goto_1

    .line 2563
    :cond_a
    const/16 v6, 0x11

    move/from16 v0, p1

    if-eq v0, v6, :cond_b

    .line 2563
    const/4 v6, 0x1

    move/from16 v0, p1

    if-ne v0, v6, :cond_c

    :cond_b
    move-object/from16 v0, p0

    .line 2568
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->pageLeft()Z

    move-result v3

    goto/16 :goto_1

    .line 2568
    :cond_c
    const/16 v6, 0x42

    move/from16 v0, p1

    if-eq v0, v6, :cond_d

    .line 2568
    const/4 v6, 0x2

    move/from16 v0, p1

    if-ne v0, v6, :cond_1

    :cond_d
    move-object/from16 v0, p0

    .line 2571
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->pageRight()Z

    move-result v3

    goto/16 :goto_1
.end method

.method public beginFakeDrag()Z
    .locals 18

    move-object/from16 v0, p0

    .line 2273
    iget-boolean v8, v0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v8, :cond_0

    .line 2273
    const/4 v9, 0x0

    .line 2289
    return v9

    .line 2276
    :cond_0
    const/4 v9, 0x1

    move-object/from16 v0, p0

    .line 2276
    iput-boolean v9, v0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    const/4 v9, 0x1

    move v10, v9

    move-object/from16 v0, p0

    .line 2277
    invoke-direct {v0, v10}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    .line 2278
    const/4 v11, 0x0

    move-object/from16 v0, p0

    .line 2278
    iput v11, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    move-object/from16 v0, p0

    .line 2279
    iget-object v12, v0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v12, :cond_1

    .line 2280
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2284
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 2285
    const/4 v9, 0x0

    .line 2285
    const/4 v11, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-wide v0, v13

    move-wide v2, v13

    move v4, v9

    move v5, v11

    move/from16 v6, v16

    move/from16 v7, v17

    .line 2285
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v15

    move-object/from16 v0, p0

    .line 2286
    iget-object v12, v0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v12, v15}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2287
    invoke-virtual {v15}, Landroid/view/MotionEvent;->recycle()V

    move-object/from16 v0, p0

    .line 2288
    iput-wide v13, v0, Landroid/support/v4/view/ViewPager;->mFakeDragBeginTime:J

    .line 2288
    const/4 v9, 0x1

    return v9

    :cond_1
    move-object/from16 v0, p0

    .line 2282
    iget-object v12, v0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v12}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 17

    move-object/from16 v0, p1

    instance-of v6, v0, Landroid/view/ViewGroup;

    if-eqz v6, :cond_1

    move-object/from16 v8, p1

    .line 2452
    check-cast v8, Landroid/view/ViewGroup;

    .line 2452
    move-object v7, v8

    move-object/from16 v0, p1

    .line 2453
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v9

    move-object/from16 v0, p1

    .line 2454
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 2455
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    .line 2457
    add-int/lit8 v12, v11, -0x1

    :goto_0
    if-ltz v12, :cond_1

    .line 2460
    invoke-virtual {v7, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 2461
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

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v16, 0x1

    .line 2470
    return v16

    .line 2457
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

.method public canScrollHorizontally(I)Z
    .locals 7

    const/4 v0, 0x1

    .line 2424
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-nez v1, :cond_1

    .line 2424
    :cond_0
    const/4 v2, 0x0

    .line 2435
    return v2

    .line 2428
    :cond_1
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v3

    .line 2429
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v4

    if-gez p1, :cond_3

    .line 2431
    int-to-float v5, v3

    iget v6, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    mul-float/2addr v5, v6

    float-to-int v3, v5

    if-le v4, v3, :cond_2

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    if-lez p1, :cond_0

    .line 2433
    int-to-float v5, v3

    iget v6, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    mul-float/2addr v5, v6

    float-to-int v3, v5

    if-ge v4, v3, :cond_4

    :goto_1
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 2

    instance-of v0, p1, Landroid/support/v4/view/ViewPager$LayoutParams;

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

.method public computeScroll()V
    .locals 7

    .line 1607
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1608
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v2

    .line 1609
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v3

    .line 1610
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    .line 1611
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    if-ne v2, v4, :cond_0

    if-eq v3, v5, :cond_1

    .line 1614
    :cond_0
    invoke-virtual {p0, v4, v5}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1615
    invoke-direct {p0, v4}, Landroid/support/v4/view/ViewPager;->pageScrolled(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1616
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1616
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v5}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1622
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1628
    :goto_0
    return-void

    .line 1616
    :cond_2
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->completeScroll(Z)V

    goto :goto_0
.end method

.method dataSetChanged()V
    .locals 23

    move-object/from16 v0, p0

    .line 845
    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    move-object/from16 v0, p0

    .line 846
    iput v3, v0, Landroid/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    move-object/from16 v0, p0

    .line 847
    iget-object v4, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    if-ge v5, v6, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v6, v3, :cond_1

    const/4 v7, 0x1

    :goto_0
    move-object/from16 v0, p0

    .line 849
    iget v5, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    .line 851
    const/4 v8, 0x0

    .line 852
    const/4 v9, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v9, v6, :cond_6

    move-object/from16 v0, p0

    .line 853
    iget-object v4, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v12, v10

    check-cast v12, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object v11, v12

    move-object/from16 v0, p0

    .line 854
    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v10, v11, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, v10}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v6

    const/4 v13, -0x1

    if-ne v6, v13, :cond_2

    .line 852
    :cond_0
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 847
    goto :goto_0

    :cond_2
    const/4 v13, -0x2

    if-ne v6, v13, :cond_4

    move-object/from16 v0, p0

    .line 861
    iget-object v4, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 862
    add-int/lit8 v9, v9, -0x1

    if-nez v8, :cond_3

    move-object/from16 v0, p0

    .line 865
    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 866
    const/4 v8, 0x1

    :cond_3
    move-object/from16 v0, p0

    .line 869
    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v6, v11, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget-object v10, v11, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v6, v10}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 870
    const/4 v7, 0x1

    move-object/from16 v0, p0

    .line 872
    iget v6, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    iget v14, v11, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ne v6, v14, :cond_0

    move-object/from16 v0, p0

    .line 874
    iget v14, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    add-int/lit8 v6, v3, -0x1

    invoke-static {v14, v6}, Ljava/lang/Math;->min(II)I

    move-result v14

    const/4 v13, 0x0

    move v15, v13

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 875
    const/4 v7, 0x1

    goto :goto_2

    .line 880
    :cond_4
    iget v14, v11, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-eq v14, v6, :cond_0

    .line 881
    iget v14, v11, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v14, v15, :cond_5

    .line 883
    move v5, v6

    .line 886
    :cond_5
    iput v6, v11, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 887
    const/4 v7, 0x1

    goto :goto_2

    :cond_6
    if-eqz v8, :cond_7

    move-object/from16 v0, p0

    .line 892
    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    :cond_7
    move-object/from16 v0, p0

    .line 895
    iget-object v4, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v16, Landroid/support/v4/view/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v7, :cond_a

    move-object/from16 v0, p0

    .line 899
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v3

    .line 900
    const/4 v15, 0x0

    :goto_3
    if-ge v15, v3, :cond_9

    move-object/from16 v0, p0

    .line 901
    invoke-virtual {v0, v15}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    .line 902
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v20, v18

    check-cast v20, Landroid/support/v4/view/ViewPager$LayoutParams;

    move-object/from16 v19, v20

    move-object/from16 v0, v19

    .line 903
    iget-boolean v7, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v7, :cond_8

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    .line 900
    :cond_8
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 900
    :cond_9
    const/4 v13, 0x0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    .line 908
    invoke-virtual {v0, v5, v13, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    move-object/from16 v0, p0

    .line 909
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    .line 911
    :cond_a
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 2476
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 8

    .line 2720
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 2720
    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    .line 2721
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    .line 2737
    return v2

    .line 2725
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v3

    .line 2726
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 2727
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2728
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 2729
    invoke-virtual {p0, v4}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    iget v5, v6, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v7, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v5, v7, :cond_1

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    return v1

    .line 2726
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2726
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 6

    const v1, 0x3f000000    # 0.5f

    sub-float v0, p1, v1

    .line 767
    float-to-double v2, v0

    const-wide v4, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v2, v4

    double-to-float v0, v2

    .line 768
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v0, v2

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 2171
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2172
    const/4 v0, 0x0

    .line 2174
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 2174
    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v4

    const/4 v2, 0x1

    if-le v4, v2, :cond_4

    .line 2178
    :cond_0
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2179
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 2180
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v7, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v1

    sub-int v1, v7, v1

    .line 2181
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v7

    .line 2181
    const v8, 0x43870000    # 270.0f

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2184
    neg-int v9, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v10

    add-int v10, v9, v10

    int-to-float v11, v10

    iget v12, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    int-to-float v13, v7

    mul-float/2addr v12, v13

    invoke-virtual {p1, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2185
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5, v1, v7}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 2186
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    const/4 v2, 0x0

    or-int v0, v2, v6

    .line 2187
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2189
    :cond_1
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    .line 2190
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 2191
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v9

    .line 2192
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v7, v4

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v7, v4

    const v8, 0x42b40000    # 90.0f

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2195
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v12, v4

    iget v11, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    const v8, 0x3f800000    # 1.0f

    add-float/2addr v11, v8

    neg-float v11, v11

    int-to-float v13, v9

    mul-float/2addr v11, v13

    invoke-virtual {p1, v12, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2196
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5, v7, v9}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 2197
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    or-int/2addr v0, v6

    .line 2198
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 2207
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2209
    :cond_3
    return-void

    .line 2201
    :cond_4
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    .line 2202
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 3

    .line 754
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 755
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 757
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 759
    :cond_0
    return-void
.end method

.method public endFakeDrag()V
    .locals 14

    .line 2299
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    if-nez v0, :cond_0

    .line 2300
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 2300
    const-string v2, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2303
    :cond_0
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v4, p0, Landroid/support/v4/view/ViewPager;->mMaximumVelocity:I

    int-to-float v5, v4

    const/16 v6, 0x3e8

    invoke-virtual {v3, v6, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2305
    iget v4, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    invoke-static {v3, v4}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v5

    float-to-int v7, v5

    .line 2307
    const/4 v6, 0x1

    .line 2307
    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 2308
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v4

    .line 2309
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v8

    .line 2310
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->infoForCurrentScrollPosition()Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v9

    .line 2311
    iget v10, v9, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 2312
    int-to-float v5, v8

    int-to-float v11, v4

    div-float v11, v5, v11

    iget v5, v9, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v11, v5

    iget v5, v9, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    div-float v5, v11, v5

    .line 2313
    iget v11, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    iget v12, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    sub-float v12, v11, v12

    float-to-int v8, v12

    .line 2314
    invoke-direct {p0, v10, v5, v7, v8}, Landroid/support/v4/view/ViewPager;->determineTargetPage(IFII)I

    move-result v10

    .line 2314
    const/4 v6, 0x1

    .line 2314
    const/4 v13, 0x1

    .line 2316
    invoke-virtual {p0, v10, v6, v13, v7}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 2317
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->endDrag()V

    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    .line 2320
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 2489
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 2490
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 2510
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 2510
    return v1

    :sswitch_0
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v2

    return v2

    :sswitch_1
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v2

    return v2

    .line 2498
    :sswitch_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2498
    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 2501
    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v2

    return v2

    .line 2503
    :cond_1
    const/4 v1, 0x1

    .line 2503
    invoke-static {p1, v1}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2504
    const/4 v1, 0x1

    .line 2504
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v2

    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method public fakeDragBy(F)V
    .locals 35

    move-object/from16 v0, p0

    iget-boolean v8, v0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    if-nez v8, :cond_0

    .line 2331
    new-instance v9, Ljava/lang/IllegalStateException;

    .line 2331
    const-string v10, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_0
    move-object/from16 v0, p0

    iget v11, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    add-float v11, v11, p1

    move-object/from16 v0, p0

    iput v11, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    move-object/from16 v0, p0

    .line 2336
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v12

    int-to-float v13, v12

    .line 2337
    sub-float v11, v13, p1

    move-object/from16 v0, p0

    .line 2338
    invoke-direct {v0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v12

    int-to-float v13, v12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    move/from16 p1, v0

    mul-float v13, v13, p1

    int-to-float v0, v12

    move/from16 p1, v0

    move-object/from16 v0, p0

    iget v14, v0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    mul-float p1, p1, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v19, v16

    check-cast v19, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object/from16 v18, v19

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v23, v16

    check-cast v23, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object/from16 v22, v23

    move-object/from16 v0, v18

    .line 2345
    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move/from16 v21, v0

    if-eqz v21, :cond_1

    move-object/from16 v0, v18

    .line 2346
    iget v14, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    int-to-float v13, v12

    mul-float v13, v14, v13

    :cond_1
    move-object/from16 v0, v22

    .line 2348
    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v21

    move/from16 v1, v25

    if-eq v0, v1, :cond_2

    move-object/from16 v0, v22

    .line 2349
    iget v14, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    int-to-float v0, v12

    move/from16 p1, v0

    mul-float p1, v14, p1

    .line 2352
    :cond_2
    cmpg-float v26, v11, v13

    if-gez v26, :cond_4

    .line 2353
    move v11, v13

    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    float-to-int v0, v11

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v13, v0

    sub-float v13, v11, v13

    add-float/2addr v14, v13

    move-object/from16 v0, p0

    iput v14, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2359
    float-to-int v0, v11

    move/from16 v25, v0

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 2360
    float-to-int v0, v11

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager;->pageScrolled(I)Z

    .line 2363
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v27

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/support/v4/view/ViewPager;->mFakeDragBeginTime:J

    move-wide/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    move/from16 p1, v0

    const/16 v17, 0x2

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-wide/from16 v0, v29

    move-wide/from16 v2, v27

    move/from16 v4, v17

    move/from16 v5, p1

    move/from16 v6, v32

    move/from16 v7, v33

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    move-object/from16 v0, v31

    .line 2367
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 2368
    return-void

    .line 2354
    :cond_4
    cmpl-float v26, v11, p1

    if-lez v26, :cond_3

    move/from16 v11, p1

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 2742
    new-instance v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 2757
    new-instance v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/view/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 2747
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getAdapter()Landroid/support/v4/view/PagerAdapter;
    .locals 1

    .line 470
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 9

    .line 642
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrder:I

    .line 642
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, -0x1

    sub-int p2, v0, p2

    .line 643
    :goto_0
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/view/View;

    move-object v4, v5

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Landroid/support/v4/view/ViewPager$LayoutParams;

    move-object v7, v8

    iget p2, v7, Landroid/support/v4/view/ViewPager$LayoutParams;->childIndex:I

    .line 644
    return p2

    .line 642
    :cond_0
    goto :goto_0
.end method

.method public getCurrentItem()I
    .locals 1

    .line 505
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .line 667
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .line 723
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;
    .locals 5

    .line 1337
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_2

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 1343
    return-object v2

    .line 1341
    :cond_1
    move-object v3, v0

    .line 1341
    check-cast v3, Landroid/view/View;

    .line 1341
    move-object p1, v3

    goto :goto_0

    .line 1343
    :cond_2
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v4

    return-object v4
.end method

.method infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;
    .locals 9

    .line 1326
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1327
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object v4, v5

    .line 1328
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v3, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v6, p1, v3}, Landroid/support/v4/view/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1332
    return-object v4

    .line 1326
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1326
    :cond_1
    const/4 v8, 0x0

    return-object v8
.end method

.method infoForPosition(I)Landroid/support/v4/view/ViewPager$ItemInfo;
    .locals 7

    .line 1347
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1348
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object v4, v5

    .line 1349
    iget v2, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ne v2, p1, :cond_0

    .line 1353
    return-object v4

    .line 1347
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1347
    :cond_1
    const/4 v6, 0x0

    return-object v6
.end method

.method initViewPager()V
    .locals 13

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setWillNotDraw(Z)V

    const v0, 0x40000

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setDescendantFocusability(I)V

    const/4 v0, 0x1

    .line 356
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setFocusable(Z)V

    .line 357
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 358
    new-instance v2, Landroid/widget/Scroller;

    sget-object v3, Landroid/support/v4/view/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v2, v1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 359
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    .line 360
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v7, v6, Landroid/util/DisplayMetrics;->density:F

    .line 362
    invoke-static {v4}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v8

    iput v8, p0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    const v10, 0x43c80000    # 400.0f

    mul-float v9, v10, v7

    float-to-int v8, v9

    iput v8, p0, Landroid/support/v4/view/ViewPager;->mMinimumVelocity:I

    .line 364
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v8

    iput v8, p0, Landroid/support/v4/view/ViewPager;->mMaximumVelocity:I

    .line 365
    new-instance v11, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v11, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 366
    new-instance v11, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v11, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    const v10, 0x41c80000    # 25.0f

    mul-float v9, v10, v7

    float-to-int v8, v9

    iput v8, p0, Landroid/support/v4/view/ViewPager;->mFlingDistance:I

    const v10, 0x40000000    # 2.0f

    mul-float v9, v10, v7

    float-to-int v8, v9

    iput v8, p0, Landroid/support/v4/view/ViewPager;->mCloseEnough:I

    const v10, 0x41800000    # 16.0f

    mul-float v9, v10, v7

    float-to-int v8, v9

    iput v8, p0, Landroid/support/v4/view/ViewPager;->mDefaultGutterSize:I

    .line 372
    new-instance v12, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;

    invoke-direct {v12, p0}, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;-><init>(Landroid/support/v4/view/ViewPager;)V

    invoke-static {p0, v12}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 374
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v8

    if-nez v8, :cond_0

    const/4 v0, 0x1

    move v8, v0

    .line 376
    invoke-static {p0, v8}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 379
    :cond_0
    return-void
.end method

.method public isFakeDragging()Z
    .locals 1

    .line 2380
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1358
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    .line 1360
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 383
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 384
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 385
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2213
    invoke-super {v0, v1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    if-lez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v7, :cond_2

    move-object/from16 v0, p0

    .line 2217
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v8

    move-object/from16 v0, p0

    .line 2218
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v9, v6

    int-to-float v10, v3

    div-float v11, v9, v10

    .line 2221
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v16, v13

    check-cast v16, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object/from16 v15, v16

    .line 2223
    iget v9, v15, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 2225
    iget v0, v15, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v6, v17, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v20, v13

    check-cast v20, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object/from16 v19, v20

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move/from16 v21, v0

    :goto_0
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    .line 2228
    :goto_1
    iget v6, v15, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move/from16 v0, v18

    if-le v0, v6, :cond_0

    move/from16 v0, v17

    if-ge v12, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v22, v13

    check-cast v22, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object/from16 v15, v22

    goto :goto_1

    .line 2233
    :cond_0
    iget v6, v15, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move/from16 v0, v18

    if-ne v0, v6, :cond_3

    .line 2234
    iget v10, v15, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget v9, v15, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v10, v9

    int-to-float v9, v3

    mul-float v23, v10, v9

    .line 2235
    iget v10, v15, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget v9, v15, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v10, v9

    add-float v9, v10, v11

    :goto_2
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v10, v6

    add-float v10, v10, v23

    int-to-float v0, v8

    move/from16 v24, v0

    cmpl-float v25, v10, v24

    if-lez v25, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mTopPageBounds:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v0, v6

    move/from16 v24, v0

    add-float v24, v24, v23

    const v28, 0x3f000000    # 0.5f

    add-float v24, v24, v28

    move/from16 v0, v24

    float-to-int v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mBottomPageBounds:I

    move/from16 v29, v0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v29

    invoke-virtual {v4, v0, v1, v6, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2248
    :cond_1
    add-int v29, v8, v3

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v24, v0

    cmpl-float v25, v23, v24

    if-lez v25, :cond_4

    .line 2253
    :cond_2
    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v10

    .line 2238
    add-float v24, v9, v10

    int-to-float v0, v3

    move/from16 v23, v0

    mul-float v23, v24, v23

    .line 2239
    add-float v24, v10, v11

    add-float v9, v9, v24

    goto :goto_2

    .line 2227
    :cond_4
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22

    move-object/from16 v0, p1

    .line 1787
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    and-int/lit16 v7, v6, 0xff

    const/4 v8, 0x3

    if-eq v7, v8, :cond_0

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    :cond_0
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput-boolean v8, v0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput-boolean v8, v0, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    const/4 v8, -0x1

    move-object/from16 v0, p0

    iput v8, v0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    move-object/from16 v0, p0

    .line 1796
    iget-object v9, v0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_1

    move-object/from16 v0, p0

    .line 1797
    iget-object v9, v0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-object v10, v0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    const/4 v8, 0x0

    .line 1920
    return v8

    :cond_2
    if-eqz v7, :cond_4

    move-object/from16 v0, p0

    .line 1806
    iget-boolean v11, v0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v11, :cond_3

    .line 1806
    const/4 v8, 0x1

    return v8

    :cond_3
    move-object/from16 v0, p0

    .line 1810
    iget-boolean v11, v0, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    if-eqz v11, :cond_4

    .line 1810
    const/4 v8, 0x0

    return v8

    .line 1911
    :cond_4
    sparse-switch v7, :sswitch_data_0

    goto :goto_0

    :cond_5
    :goto_0
    move-object/from16 v0, p0

    .line 1911
    iget-object v9, v0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v9, :cond_6

    .line 1912
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_6
    move-object/from16 v0, p0

    .line 1914
    iget-object v9, v0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    move-object/from16 v0, p0

    .line 1920
    iget-boolean v11, v0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    return v11

    :sswitch_0
    move-object/from16 v0, p0

    .line 1827
    iget v7, v0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 1827
    const/4 v8, -0x1

    if-eq v7, v8, :cond_5

    move-object/from16 v0, p1

    .line 1833
    invoke-static {v0, v7}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v7

    move-object/from16 v0, p1

    .line 1834
    invoke-static {v0, v7}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v12

    move-object/from16 v0, p0

    .line 1835
    iget v13, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    sub-float v14, v12, v13

    .line 1836
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v15

    move-object/from16 v0, p1

    .line 1837
    invoke-static {v0, v7}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v16

    move-object/from16 v0, p0

    .line 1838
    iget v13, v0, Landroid/support/v4/view/ViewPager;->mInitialMotionY:F

    sub-float v13, v16, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/16 v18, 0x0

    cmpl-float v17, v14, v18

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v14}, Landroid/support/v4/view/ViewPager;->isGutterDrag(FF)Z

    move-result v11

    if-nez v11, :cond_7

    float-to-int v6, v14

    float-to-int v0, v12

    move/from16 v20, v0

    move/from16 v0, v16

    float-to-int v7, v0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move v2, v8

    move v3, v6

    move/from16 v4, v20

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v11

    if-eqz v11, :cond_7

    move-object/from16 v0, p0

    .line 1844
    iput v12, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    move/from16 v0, v16

    move-object/from16 v1, p0

    .line 1845
    iput v0, v1, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput-boolean v8, v0, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    const/4 v8, 0x0

    return v8

    :cond_7
    move-object/from16 v0, p0

    .line 1849
    iget v7, v0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v0, v7

    move/from16 v19, v0

    cmpl-float v17, v15, v19

    if-lez v17, :cond_a

    const v18, 0x3f000000    # 0.5f

    mul-float v19, v18, v15

    cmpl-float v17, v19, v13

    if-lez v17, :cond_a

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput-boolean v8, v0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/support/v4/view/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    const/16 v18, 0x0

    cmpl-float v17, v14, v18

    if-lez v17, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v13, v7

    add-float v19, v19, v13

    :goto_1
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    move/from16 v0, v16

    move-object/from16 v1, p0

    .line 1856
    iput v0, v1, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    .line 1856
    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    :cond_8
    :goto_2
    move-object/from16 v0, p0

    .line 1866
    iget-boolean v11, v0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    .line 1868
    invoke-direct {v0, v12}, Landroid/support/v4/view/ViewPager;->performDrag(F)Z

    move-result v11

    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    .line 1869
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    .line 1854
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v13, v7

    sub-float v19, v19, v13

    goto :goto_1

    :cond_a
    move-object/from16 v0, p0

    .line 1858
    iget v7, v0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v0, v7

    move/from16 v19, v0

    cmpl-float v17, v13, v19

    if-lez v17, :cond_8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput-boolean v8, v0, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    goto :goto_2

    :sswitch_1
    move-object/from16 v0, p1

    .line 1880
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    move-object/from16 v0, p1

    .line 1881
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mInitialMotionY:F

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput-boolean v8, v0, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    move-object/from16 v0, p0

    .line 1885
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-object/from16 v0, p0

    .line 1886
    iget v7, v0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    .line 1886
    const/4 v8, 0x2

    if-ne v7, v8, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v20

    sub-int v7, v7, v20

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCloseEnough:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v7, v0, :cond_b

    move-object/from16 v0, p0

    .line 1889
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput-boolean v8, v0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    move-object/from16 v0, p0

    .line 1891
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->populate()V

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput-boolean v8, v0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/support/v4/view/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    goto/16 :goto_0

    :cond_b
    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/support/v4/view/ViewPager;->completeScroll(Z)V

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput-boolean v8, v0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    goto/16 :goto_0

    :sswitch_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1907
    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 27

    move-object/from16 v0, p0

    .line 1498
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v4

    .line 1499
    sub-int v5, p4, p2

    .line 1500
    sub-int p2, p5, p3

    move-object/from16 v0, p0

    .line 1501
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v6

    move-object/from16 v0, p0

    .line 1502
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v7

    move-object/from16 v0, p0

    .line 1503
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v8

    move-object/from16 v0, p0

    .line 1504
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v9

    move-object/from16 v0, p0

    .line 1505
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v10

    const/16 p3, 0x0

    .line 1511
    const/4 v11, 0x0

    :goto_0
    if-ge v11, v4, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1513
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result p5

    .line 1513
    const/16 v13, 0x8

    move/from16 v0, p5

    if-eq v0, v13, :cond_0

    .line 1514
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    move-object/from16 v16, v14

    check-cast v16, Landroid/support/v4/view/ViewPager$LayoutParams;

    move-object/from16 v15, v16

    iget-boolean v0, v15, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    iget v0, v15, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    move/from16 p5, v0

    and-int/lit8 p5, p5, 0x7

    iget v0, v15, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    move/from16 p4, v0

    and-int/lit8 p4, p4, 0x70

    .line 1522
    sparse-switch p5, :sswitch_data_0

    goto :goto_1

    :goto_1
    :sswitch_0
    move/from16 p5, v6

    .line 1539
    :goto_2
    sparse-switch p4, :sswitch_data_1

    goto :goto_3

    :goto_3
    move/from16 p4, v7

    :goto_4
    add-int p5, p5, v10

    .line 1555
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    add-int v18, v18, p5

    add-int v19, v19, p4

    move/from16 v0, p5

    move/from16 v1, p4

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 1558
    add-int/lit8 p3, p3, 0x1

    .line 1511
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :sswitch_1
    move/from16 p5, v6

    .line 1526
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    add-int v6, v6, v19

    .line 1527
    goto :goto_2

    .line 1529
    :sswitch_2
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    sub-int v19, v5, v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result p5

    .line 1531
    goto :goto_2

    .line 1533
    :sswitch_3
    sub-int v19, v5, v8

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    sub-int p5, v19, v18

    .line 1534
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    add-int v8, v8, v19

    goto :goto_2

    :sswitch_4
    move/from16 p4, v7

    .line 1543
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    add-int v7, v7, v19

    .line 1544
    goto :goto_4

    .line 1546
    :sswitch_5
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    sub-int v19, p2, v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 1548
    goto :goto_4

    .line 1550
    :sswitch_6
    sub-int v19, p2, v9

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    sub-int p4, v19, v18

    .line 1551
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    add-int v9, v9, v19

    goto :goto_4

    .line 1563
    :cond_1
    sub-int v19, v5, v6

    sub-int p5, v19, v8

    const/16 v19, 0x0

    :goto_5
    move/from16 v0, v19

    if-ge v0, v4, :cond_4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1567
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v18

    .line 1567
    const/16 v13, 0x8

    move/from16 v0, v18

    if-eq v0, v13, :cond_3

    .line 1568
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    move-object/from16 v21, v14

    check-cast v21, Landroid/support/v4/view/ViewPager$LayoutParams;

    move-object/from16 v20, v21

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v17, v0

    if-nez v17, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v22

    if-eqz v22, :cond_3

    move/from16 v0, p5

    .line 1571
    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    move/from16 v24, v0

    mul-float v24, v23, v24

    move/from16 v0, v24

    float-to-int v11, v0

    .line 1572
    add-int v18, v6, v11

    .line 1573
    move v10, v7

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->needsMeasure:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    const/4 v13, 0x0

    move-object/from16 v0, v20

    iput-boolean v13, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->needsMeasure:Z

    move/from16 v0, p5

    .line 1578
    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    move/from16 v23, v0

    mul-float v24, v24, v23

    move/from16 v0, v24

    float-to-int v5, v0

    const v13, 0x40000000    # 2.0f

    invoke-static {v5, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1581
    sub-int v8, p2, v7

    sub-int/2addr v8, v9

    const v13, 0x40000000    # 2.0f

    invoke-static {v8, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p4

    move/from16 v0, p4

    invoke-virtual {v12, v5, v0}, Landroid/view/View;->measure(II)V

    .line 1589
    :cond_2
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v5, v5, v18

    add-int/2addr v8, v10

    move/from16 v0, v18

    invoke-virtual {v12, v0, v10, v5, v8}, Landroid/view/View;->layout(IIII)V

    .line 1565
    :cond_3
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_5

    :cond_4
    move-object/from16 v0, p0

    iput v7, v0, Landroid/support/v4/view/ViewPager;->mTopPageBounds:I

    .line 1596
    sub-int v19, p2, v9

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mBottomPageBounds:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mDecorChildCount:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move/from16 v19, v0

    const/4 v13, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v13, v2, v3}, Landroid/support/v4/view/ViewPager;->scrollToItem(IZIZ)V

    :cond_5
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    .line 1603
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0x5 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_5
        0x30 -> :sswitch_4
        0x50 -> :sswitch_6
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 19

    const/4 v3, 0x0

    move/from16 v0, p1

    invoke-static {v3, v0}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v2

    const/4 v3, 0x0

    move/from16 v0, p2

    invoke-static {v3, v0}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result p2

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/view/ViewPager;->setMeasuredDimension(II)V

    move-object/from16 v0, p0

    .line 1372
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v4

    .line 1373
    div-int/lit8 v5, v4, 0xa

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/view/ViewPager;->mDefaultGutterSize:I

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/view/ViewPager;->mGutterSize:I

    move-object/from16 v0, p0

    .line 1377
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v2

    sub-int v2, v4, v2

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v6

    sub-int p1, v2, v6

    move-object/from16 v0, p0

    .line 1378
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getMeasuredHeight()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v6

    sub-int/2addr v2, v6

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v6

    sub-int p2, v2, v6

    move-object/from16 v0, p0

    .line 1385
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v7

    .line 1386
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v7, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1388
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v2

    .line 1388
    const/16 v3, 0x8

    if-eq v2, v3, :cond_5

    .line 1389
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Landroid/support/v4/view/ViewPager$LayoutParams;

    move-object v10, v11

    if-eqz v10, :cond_5

    iget-boolean v12, v10, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v12, :cond_5

    .line 1391
    iget v2, v10, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v4, v2, 0x7

    .line 1392
    iget v2, v10, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v6, v2, 0x70

    .line 1393
    const v2, -0x80000000

    .line 1394
    const v13, -0x80000000

    .line 1394
    const/16 v3, 0x30

    if-eq v6, v3, :cond_0

    .line 1394
    const/16 v3, 0x50

    if-ne v6, v3, :cond_6

    :cond_0
    const/4 v12, 0x1

    :goto_1
    const/4 v3, 0x3

    if-eq v4, v3, :cond_1

    const/4 v3, 0x5

    if-ne v4, v3, :cond_7

    :cond_1
    const/4 v14, 0x1

    :goto_2
    if-eqz v12, :cond_8

    .line 1399
    const v2, 0x40000000    # 2.0f

    :cond_2
    :goto_3
    move/from16 v6, p1

    move/from16 v4, p2

    .line 1406
    iget v15, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1406
    const/4 v3, -0x2

    if-eq v15, v3, :cond_3

    .line 1407
    const v2, 0x40000000    # 2.0f

    .line 1408
    iget v15, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1408
    const/4 v3, -0x1

    if-eq v15, v3, :cond_3

    .line 1409
    iget v6, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1412
    :cond_3
    iget v15, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1412
    const/4 v3, -0x2

    if-eq v15, v3, :cond_4

    .line 1413
    const v13, 0x40000000    # 2.0f

    .line 1414
    iget v15, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1414
    const/4 v3, -0x1

    if-eq v15, v3, :cond_4

    .line 1415
    iget v4, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_4
    invoke-static {v6, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1419
    invoke-static {v4, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v8, v2, v4}, Landroid/view/View;->measure(II)V

    if-eqz v12, :cond_9

    .line 1423
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int p2, p2, v15

    .line 1386
    :cond_5
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1395
    :cond_6
    const/4 v12, 0x0

    goto :goto_1

    .line 1396
    :cond_7
    const/4 v14, 0x0

    goto :goto_2

    :cond_8
    if-eqz v14, :cond_2

    .line 1401
    const v13, 0x40000000    # 2.0f

    goto :goto_3

    :cond_9
    if-eqz v14, :cond_5

    .line 1425
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int p1, p1, v15

    goto :goto_4

    :cond_a
    const v3, 0x40000000    # 2.0f

    move/from16 v0, p1

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/v4/view/ViewPager;->mChildWidthMeasureSpec:I

    const v3, 0x40000000    # 2.0f

    move/from16 v0, p2

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/v4/view/ViewPager;->mChildHeightMeasureSpec:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    move-object/from16 v0, p0

    .line 1436
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->populate()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    move-object/from16 v0, p0

    .line 1440
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v15

    .line 1441
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v15, :cond_d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1443
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v6

    .line 1443
    const/16 v3, 0x8

    if-eq v6, v3, :cond_c

    .line 1447
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    move-object/from16 v16, v9

    check-cast v16, Landroid/support/v4/view/ViewPager$LayoutParams;

    move-object/from16 v10, v16

    if-eqz v10, :cond_b

    iget-boolean v12, v10, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v12, :cond_c

    :cond_b
    move/from16 v0, p1

    .line 1449
    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v10, Landroid/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    move/from16 v18, v0

    mul-float v18, v17, v18

    move/from16 v0, v18

    float-to-int v6, v0

    const v3, 0x40000000    # 2.0f

    invoke-static {v6, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v4/view/ViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {v8, v6, v7}, Landroid/view/View;->measure(II)V

    .line 1441
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1455
    :cond_d
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 22

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v4/view/ViewPager;->mDecorChildCount:I

    if-lez v4, :cond_2

    move-object/from16 v0, p0

    .line 1673
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v5

    move-object/from16 v0, p0

    .line 1674
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v6

    move-object/from16 v0, p0

    .line 1675
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v7

    move-object/from16 v0, p0

    .line 1676
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    .line 1677
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v8

    .line 1678
    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1680
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    move-object v13, v11

    check-cast v13, Landroid/support/v4/view/ViewPager$LayoutParams;

    move-object v12, v13

    .line 1681
    iget-boolean v14, v12, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v14, :cond_1

    .line 1678
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1683
    :cond_1
    iget v15, v12, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v15, v15, 0x7

    .line 1687
    sparse-switch v15, :sswitch_data_0

    goto :goto_2

    .line 1687
    :goto_2
    :sswitch_0
    move v15, v6

    .line 1702
    :goto_3
    add-int/2addr v15, v5

    .line 1704
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v16

    sub-int v15, v15, v16

    if-eqz v15, :cond_0

    .line 1706
    invoke-virtual {v10, v15}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1

    .line 1690
    :sswitch_1
    move v15, v6

    .line 1691
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v16

    add-int v6, v6, v16

    .line 1692
    goto :goto_3

    .line 1694
    :sswitch_2
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    sub-int v16, v4, v16

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 1696
    goto :goto_3

    .line 1698
    :sswitch_3
    sub-int v16, v4, v7

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int v15, v16, v15

    .line 1699
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    add-int v7, v7, v16

    goto :goto_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    .line 1719
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v16

    move-object/from16 v0, p0

    .line 1720
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v4

    .line 1721
    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1723
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    move-object/from16 v19, v11

    check-cast v19, Landroid/support/v4/view/ViewPager$LayoutParams;

    move-object/from16 v12, v19

    .line 1725
    iget-boolean v14, v12, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v14, :cond_5

    .line 1721
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1727
    :cond_5
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int v7, v7, v16

    int-to-float v0, v7

    move/from16 v20, v0

    move-object/from16 v0, p0

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v7

    int-to-float v0, v7

    move/from16 p2, v0

    div-float v20, v20, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v10, v1}, Landroid/support/v4/view/ViewPager$PageTransformer;->transformPage(Landroid/view/View;F)V

    goto :goto_5

    :cond_6
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    .line 1733
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0x5 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 9

    .line 2693
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    .line 2694
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_0

    .line 2695
    const/4 v1, 0x0

    .line 2696
    const/4 v2, 0x1

    :goto_0
    if-eq v1, v0, :cond_2

    .line 2704
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2705
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 2706
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    iget v6, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v4, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v6, v4, :cond_1

    .line 2708
    invoke-virtual {v3, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2708
    const/4 v8, 0x1

    .line 2714
    return v8

    .line 2699
    :cond_0
    add-int/lit8 v1, v0, -0x1

    .line 2700
    const/4 v2, -0x1

    .line 2701
    const/4 v0, -0x1

    goto :goto_0

    .line 2703
    :cond_1
    add-int/2addr v1, v2

    goto :goto_0

    .line 2703
    :cond_2
    const/4 v8, 0x0

    return v8
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 8

    instance-of v0, p1, Landroid/support/v4/view/ViewPager$SavedState;

    if-nez v0, :cond_0

    .line 1273
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1288
    :goto_0
    return-void

    .line 1277
    :cond_0
    move-object v2, p1

    .line 1277
    check-cast v2, Landroid/support/v4/view/ViewPager$SavedState;

    .line 1277
    move-object v1, v2

    .line 1278
    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1280
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v3, :cond_1

    .line 1281
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object p1, v1, Landroid/support/v4/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v4, v1, Landroid/support/v4/view/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v3, p1, v4}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1282
    iget v5, v1, Landroid/support/v4/view/ViewPager$SavedState;->position:I

    .line 1282
    const/4 v6, 0x0

    .line 1282
    const/4 v7, 0x1

    invoke-virtual {p0, v5, v6, v7}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_0

    .line 1284
    :cond_1
    iget v5, v1, Landroid/support/v4/view/ViewPager$SavedState;->position:I

    iput v5, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    .line 1285
    iget-object p1, v1, Landroid/support/v4/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 1286
    iget-object v4, v1, Landroid/support/v4/view/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 1261
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1262
    new-instance v1, Landroid/support/v4/view/ViewPager$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/view/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1263
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    iput v2, v1, Landroid/support/v4/view/ViewPager$SavedState;->position:I

    .line 1264
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v3, :cond_0

    .line 1265
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Landroid/support/v4/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    .line 1267
    :cond_0
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1459
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    .line 1463
    iget p4, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    iget p2, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, p4, p2}, Landroid/support/v4/view/ViewPager;->recomputeScrollPosition(IIII)V

    .line 1465
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    .line 2046
    return v4

    :cond_0
    move-object/from16 v0, p1

    .line 1932
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_1

    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x0

    return v4

    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v6, :cond_2

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v6}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    const/4 v4, 0x0

    return v4

    :cond_3
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v7, :cond_4

    .line 1944
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    move-object/from16 v0, p1

    .line 1948
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 1949
    const/4 v3, 0x0

    .line 1951
    and-int/lit16 v5, v8, 0xff

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :cond_5
    :goto_0
    :sswitch_0
    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    .line 2044
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_6
    const/4 v4, 0x1

    return v4

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    move-object/from16 v0, p0

    .line 1955
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->populate()V

    move-object/from16 v0, p1

    .line 1958
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    move-object/from16 v0, p0

    iput v10, v0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    move-object/from16 v0, p0

    iput v10, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    move-object/from16 v0, p1

    .line 1959
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    move-object/from16 v0, p0

    iput v10, v0, Landroid/support/v4/view/ViewPager;->mInitialMotionY:F

    move-object/from16 v0, p0

    iput v10, v0, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    goto :goto_0

    :sswitch_2
    move-object/from16 v0, p0

    iget-boolean v11, v0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-nez v11, :cond_7

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v12

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v13

    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    sub-float v10, v13, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v14

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v15

    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    sub-float v10, v15, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v0, v5

    move/from16 v16, v0

    cmpl-float v17, v14, v16

    if-lez v17, :cond_7

    cmpl-float v17, v14, v10

    if-lez v17, :cond_7

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/support/v4/view/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    move/from16 v16, v0

    sub-float v16, v13, v16

    const/16 v18, 0x0

    cmpl-float v17, v16, v18

    if-lez v17, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v10, v5

    add-float v16, v16, v10

    :goto_1
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    move-object/from16 v0, p0

    .line 1982
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    if-eqz v19, :cond_7

    .line 1982
    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v11, v0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v8

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager;->performDrag(F)Z

    move-result v11

    const/4 v4, 0x0

    or-int v3, v4, v11

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v10, v5

    sub-float v16, v16, v10

    goto :goto_1

    :sswitch_3
    move-object/from16 v0, p0

    iget-boolean v11, v0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v4/view/ViewPager;->mMaximumVelocity:I

    int-to-float v13, v5

    const/16 v4, 0x3e8

    invoke-virtual {v7, v4, v13}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    invoke-static {v7, v5}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v12, v0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    move-object/from16 v0, p0

    .line 2004
    invoke-direct {v0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v5

    move-object/from16 v0, p0

    .line 2005
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v20

    move-object/from16 v0, p0

    .line 2006
    invoke-direct {v0}, Landroid/support/v4/view/ViewPager;->infoForCurrentScrollPosition()Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v21

    move-object/from16 v0, v21

    .line 2007
    iget v8, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v16, v0

    int-to-float v10, v5

    div-float v16, v16, v10

    move-object/from16 v0, v21

    iget v10, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    sub-float v16, v16, v10

    move-object/from16 v0, v21

    iget v10, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    div-float v13, v16, v10

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v5

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v16

    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    sub-float v16, v16, v10

    move/from16 v0, v16

    float-to-int v5, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v13, v12, v5}, Landroid/support/v4/view/ViewPager;->determineTargetPage(IFII)I

    move-result v8

    const/4 v4, 0x1

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v8, v4, v1, v12}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZI)V

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    move-object/from16 v0, p0

    .line 2018
    invoke-direct {v0}, Landroid/support/v4/view/ViewPager;->endDrag()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v3

    or-int v3, v11, v3

    goto/16 :goto_0

    :sswitch_4
    move-object/from16 v0, p0

    iget-boolean v11, v0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    const/4 v4, 0x1

    const/16 v22, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v24

    invoke-direct {v0, v5, v4, v1, v2}, Landroid/support/v4/view/ViewPager;->scrollToItem(IZIZ)V

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    move-object/from16 v0, p0

    .line 2026
    invoke-direct {v0}, Landroid/support/v4/view/ViewPager;->endDrag()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v3

    or-int v3, v11, v3

    goto/16 :goto_0

    :sswitch_5
    move-object/from16 v0, p1

    .line 2031
    invoke-static {v0}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v8

    move-object/from16 v0, p1

    .line 2033
    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    goto/16 :goto_0

    :sswitch_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2038
    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v5

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x3 -> :sswitch_4
        0x4 -> :sswitch_0
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
    .end sparse-switch
.end method

.method pageLeft()Z
    .locals 2

    .line 2606
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-lez v0, :cond_0

    .line 2607
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    const/4 v1, 0x1

    .line 2610
    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method pageRight()Z
    .locals 4

    .line 2614
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 2615
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    const/4 v3, 0x1

    .line 2618
    return v3

    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method populate()V
    .locals 1

    .line 914
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->populate(I)V

    .line 915
    return-void
.end method

.method populate(I)V
    .locals 49

    .line 918
    const/4 v3, 0x0

    .line 919
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move/from16 v0, p1

    if-eq v5, v0, :cond_0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move/from16 v0, p1

    if-ge v5, v0, :cond_2

    const/16 v4, 0x42

    :goto_0
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->infoForPosition(I)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v3

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mCurItem:I

    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-nez v6, :cond_3

    move-object/from16 v0, p0

    .line 927
    invoke-direct {v0}, Landroid/support/v4/view/ViewPager;->sortChildDrawingOrder()V

    .line 1103
    :cond_1
    :goto_1
    return-void

    .line 921
    :cond_2
    const/16 v4, 0x11

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v7, v0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    if-eqz v7, :cond_4

    move-object/from16 v0, p0

    .line 937
    invoke-direct {v0}, Landroid/support/v4/view/ViewPager;->sortChildDrawingOrder()V

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    .line 944
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v8

    if-eqz v8, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    sub-int/2addr v5, v9

    const/4 v10, 0x0

    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v6}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v11

    .line 953
    add-int/lit8 v12, v11, -0x1

    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    add-int v9, v13, v9

    invoke-static {v12, v9}, Ljava/lang/Math;->min(II)I

    move-result v13

    move-object/from16 v0, p0

    iget v12, v0, Landroid/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    if-eq v11, v12, :cond_5

    :try_start_0
    move-object/from16 v0, p0

    .line 958
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v5

    invoke-virtual {v14, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v15
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v16, v15

    .line 962
    :goto_2
    new-instance v17, Ljava/lang/IllegalStateException;

    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", found: "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " Pager id: "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " Pager class: "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " Problematic adapter: "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v17

    invoke-direct {v0, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 959
    :catch_0
    move-exception v21

    move-object/from16 v0, p0

    .line 960
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_2

    :cond_5
    const/16 v22, 0x0

    const/16 v23, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    move/from16 v0, v23

    if-ge v0, v12, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v27, v25

    check-cast v27, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object/from16 v26, v27

    move-object/from16 v0, v26

    iget v12, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-lt v12, v9, :cond_c

    move-object/from16 v0, v26

    iget v12, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v12, v9, :cond_6

    move-object/from16 v22, v26

    :cond_6
    if-nez v22, :cond_7

    if-lez v11, :cond_7

    move-object/from16 v0, p0

    iget v12, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v12, v1}, Landroid/support/v4/view/ViewPager;->addNewItem(II)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v22

    :cond_7
    if-eqz v22, :cond_a

    const/16 v28, 0x0

    .line 990
    add-int/lit8 v9, v23, -0x1

    if-ltz v9, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v30, v25

    check-cast v30, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object/from16 v29, v30

    :goto_4
    move-object/from16 v0, p0

    .line 992
    invoke-direct {v0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result p1

    if-gtz p1, :cond_e

    const/16 v31, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget v12, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    add-int/lit8 v12, v12, -0x1

    :goto_6
    if-ltz v12, :cond_8

    .line 996
    cmpl-float v32, v28, v31

    if-ltz v32, :cond_12

    if-ge v12, v5, :cond_12

    if-nez v29, :cond_f

    :cond_8
    move-object/from16 v0, v22

    .line 1023
    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v28, v0

    .line 1024
    add-int/lit8 v33, v23, 0x1

    const v34, 0x40000000    # 2.0f

    cmpg-float v32, v28, v34

    if-gez v32, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v35

    move/from16 v0, v33

    move/from16 v1, v35

    if-ge v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v36, v25

    check-cast v36, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object/from16 v29, v36

    :goto_7
    if-gtz p1, :cond_17

    const/16 v31, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move/from16 v35, v0

    add-int/lit8 v35, v35, 0x1

    :goto_9
    move/from16 v0, v35

    if-ge v0, v11, :cond_9

    .line 1030
    cmpl-float v32, v28, v31

    if-ltz v32, :cond_1b

    move/from16 v0, v35

    if-le v0, v13, :cond_1b

    if-nez v29, :cond_18

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/view/ViewPager;->calculatePageOffsets(Landroid/support/v4/view/ViewPager$ItemInfo;ILandroid/support/v4/view/ViewPager$ItemInfo;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move/from16 v33, v0

    if-eqz v22, :cond_1f

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v25, v0

    :goto_a
    move-object/from16 v0, p0

    move/from16 v1, v33

    move-object/from16 v2, v25

    invoke-virtual {v6, v0, v1, v2}, Landroid/support/v4/view/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    move-object/from16 v0, p0

    .line 1072
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v11

    .line 1073
    const/4 v13, 0x0

    :goto_b
    if-ge v13, v11, :cond_20

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v37

    move-object/from16 v0, v37

    .line 1075
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v38

    move-object/from16 v40, v38

    check-cast v40, Landroid/support/v4/view/ViewPager$LayoutParams;

    move-object/from16 v39, v40

    move-object/from16 v0, v39

    iput v13, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->childIndex:I

    move-object/from16 v0, v39

    iget-boolean v7, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v7, :cond_b

    move-object/from16 v0, v39

    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    move/from16 v31, v0

    const/16 v34, 0x0

    cmpl-float v32, v31, v34

    if-nez v32, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v29

    if-eqz v29, :cond_b

    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, v39

    iput v0, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, v39

    iput v0, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->position:I

    .line 1073
    :cond_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    .line 973
    :cond_c
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_3

    :cond_d
    const/16 v29, 0x0

    goto/16 :goto_4

    :cond_e
    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v41, v0

    const v34, 0x40000000    # 2.0f

    sub-float v41, v34, v41

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v42, v31, v42

    add-float v31, v41, v42

    goto/16 :goto_5

    :cond_f
    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move/from16 v33, v0

    move/from16 v0, v33

    if-ne v12, v0, :cond_10

    move-object/from16 v0, v29

    iget-boolean v7, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    if-nez v7, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v6, v0, v12, v1}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1007
    add-int/lit8 v9, v9, -0x1

    .line 1008
    add-int/lit8 v23, v23, -0x1

    if-ltz v9, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v43, v25

    check-cast v43, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object/from16 v29, v43

    .line 995
    :cond_10
    :goto_c
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_6

    :cond_11
    const/16 v29, 0x0

    goto :goto_c

    :cond_12
    if-eqz v29, :cond_14

    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move/from16 v33, v0

    move/from16 v0, v33

    if-ne v12, v0, :cond_14

    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v42, v0

    add-float v28, v28, v42

    .line 1013
    add-int/lit8 v9, v9, -0x1

    if-ltz v9, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v44, v25

    check-cast v44, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object/from16 v29, v44

    :goto_d
    goto :goto_c

    :cond_13
    const/16 v29, 0x0

    goto :goto_d

    .line 1016
    :cond_14
    add-int/lit8 v33, v9, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v33

    .line 1017
    invoke-virtual {v0, v12, v1}, Landroid/support/v4/view/ViewPager;->addNewItem(II)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v42, v0

    add-float v28, v28, v42

    .line 1018
    add-int/lit8 v23, v23, 0x1

    if-ltz v9, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v45, v25

    check-cast v45, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object/from16 v29, v45

    :goto_e
    goto :goto_c

    :cond_15
    const/16 v29, 0x0

    goto :goto_e

    :cond_16
    const/16 v29, 0x0

    goto/16 :goto_7

    :cond_17
    move-object/from16 v0, p0

    .line 1027
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v42, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v41, v0

    div-float v42, v42, v41

    const v34, 0x40000000    # 2.0f

    add-float v31, v42, v34

    goto/16 :goto_8

    :cond_18
    move-object/from16 v0, v29

    iget v5, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move/from16 v0, v35

    if-ne v0, v5, :cond_19

    move-object/from16 v0, v29

    iget-boolean v7, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    if-nez v7, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v35

    move-object/from16 v2, v25

    invoke-virtual {v6, v0, v1, v2}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v33

    if-ge v0, v5, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v46, v25

    check-cast v46, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object/from16 v29, v46

    .line 1029
    :cond_19
    :goto_f
    add-int/lit8 v35, v35, 0x1

    goto/16 :goto_9

    :cond_1a
    const/16 v29, 0x0

    goto :goto_f

    :cond_1b
    if-eqz v29, :cond_1d

    move-object/from16 v0, v29

    iget v5, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move/from16 v0, v35

    if-ne v0, v5, :cond_1d

    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v42, v0

    add-float v28, v28, v42

    .line 1045
    add-int/lit8 v33, v33, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v33

    if-ge v0, v5, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v47, v25

    check-cast v47, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object/from16 v29, v47

    :goto_10
    goto :goto_f

    :cond_1c
    const/16 v29, 0x0

    goto :goto_10

    :cond_1d
    move-object/from16 v0, p0

    move/from16 v1, v35

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->addNewItem(II)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v29

    .line 1049
    add-int/lit8 v33, v33, 0x1

    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v42, v0

    add-float v28, v28, v42

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v33

    if-ge v0, v5, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v48, v25

    check-cast v48, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object/from16 v29, v48

    :goto_11
    goto :goto_f

    :cond_1e
    const/16 v29, 0x0

    goto :goto_11

    :cond_1f
    const/16 v25, 0x0

    goto/16 :goto_a

    :cond_20
    move-object/from16 v0, p0

    .line 1086
    invoke-direct {v0}, Landroid/support/v4/view/ViewPager;->sortChildDrawingOrder()V

    move-object/from16 v0, p0

    .line 1088
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->hasFocus()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    .line 1089
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v37

    if-eqz v37, :cond_23

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->infoForAnyChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v29

    :goto_12
    if-eqz v29, :cond_21

    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move/from16 v35, v0

    move/from16 v0, v33

    move/from16 v1, v35

    if-eq v0, v1, :cond_1

    :cond_21
    const/16 v33, 0x0

    :goto_13
    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v35

    move/from16 v0, v33

    move/from16 v1, v35

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v29

    if-eqz v29, :cond_22

    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move/from16 v0, v35

    if-ne v0, v5, :cond_22

    move-object/from16 v0, v37

    .line 1096
    invoke-virtual {v0, v4}, Landroid/view/View;->requestFocus(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1092
    :cond_22
    add-int/lit8 v33, v33, 0x1

    goto :goto_13

    :cond_23
    const/16 v29, 0x0

    goto :goto_12
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 1318
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    if-eqz v0, :cond_0

    .line 1319
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->removeViewInLayout(Landroid/view/View;)V

    .line 1323
    :goto_0
    return-void

    .line 1321
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 18

    move-object/from16 v0, p0

    .line 408
    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    .line 409
    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/view/ViewPager;->mObserver:Landroid/support/v4/view/ViewPager$PagerObserver;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    move-object/from16 v0, p0

    .line 410
    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 411
    const/4 v4, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_0

    move-object/from16 v0, p0

    .line 412
    iget-object v5, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object v8, v9

    move-object/from16 v0, p0

    .line 413
    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v6, v8, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget-object v7, v8, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v6, v7}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 411
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    .line 415
    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    move-object/from16 v0, p0

    .line 416
    iget-object v5, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    .line 417
    invoke-direct {v0}, Landroid/support/v4/view/ViewPager;->removeNonDecorViews()V

    const/4 v10, 0x0

    move v6, v10

    move-object/from16 v0, p0

    .line 418
    iput v6, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    const/4 v10, 0x0

    move v6, v10

    const/4 v10, 0x0

    move v4, v10

    move-object/from16 v0, p0

    .line 419
    invoke-virtual {v0, v6, v4}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    :cond_1
    move-object/from16 v0, p0

    .line 422
    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    .line 423
    iput-object v0, v1, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    const/4 v10, 0x0

    move v6, v10

    move-object/from16 v0, p0

    .line 424
    iput v6, v0, Landroid/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    move-object/from16 v0, p0

    .line 426
    iget-object v11, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    .line 427
    iget-object v3, v0, Landroid/support/v4/view/ViewPager;->mObserver:Landroid/support/v4/view/ViewPager$PagerObserver;

    if-nez v3, :cond_2

    .line 428
    new-instance v3, Landroid/support/v4/view/ViewPager$PagerObserver;

    .line 428
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v12}, Landroid/support/v4/view/ViewPager$PagerObserver;-><init>(Landroid/support/v4/view/ViewPager;Landroid/support/v4/view/ViewPager$1;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/support/v4/view/ViewPager;->mObserver:Landroid/support/v4/view/ViewPager$PagerObserver;

    :cond_2
    move-object/from16 v0, p0

    .line 430
    iget-object v11, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/view/ViewPager;->mObserver:Landroid/support/v4/view/ViewPager$PagerObserver;

    invoke-virtual {v11, v3}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 431
    const/4 v10, 0x0

    move-object/from16 v0, p0

    .line 431
    iput-boolean v10, v0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    move-object/from16 v0, p0

    .line 432
    iget-boolean v13, v0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    .line 433
    const/4 v10, 0x1

    move-object/from16 v0, p0

    .line 433
    iput-boolean v10, v0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    move-object/from16 v0, p0

    .line 434
    iget-object v11, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v11}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Landroid/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    move-object/from16 v0, p0

    .line 435
    iget v6, v0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    if-ltz v6, :cond_5

    move-object/from16 v0, p0

    .line 436
    iget-object v11, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v11, v14, v15}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    move-object/from16 v0, p0

    .line 437
    iget v6, v0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    .line 437
    const/4 v10, 0x0

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v6, v10, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    const/4 v10, -0x1

    move-object/from16 v0, p0

    iput v10, v0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    .line 439
    const/4 v12, 0x0

    move-object/from16 v0, p0

    .line 439
    iput-object v12, v0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 440
    const/4 v12, 0x0

    move-object/from16 v0, p0

    .line 440
    iput-object v12, v0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    .line 448
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapterChangeListener:Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    move-object/from16 v0, p1

    if-eq v2, v0, :cond_4

    move-object/from16 v0, p0

    .line 449
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapterChangeListener:Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v2, v1}, Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;->onAdapterChanged(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    .line 451
    :cond_4
    return-void

    :cond_5
    if-nez v13, :cond_6

    move-object/from16 v0, p0

    .line 442
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->populate()V

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    .line 444
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    goto :goto_1
.end method

.method setChildrenDrawingOrderEnabledCompat(Z)V
    .locals 12

    .line 623
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 623
    const/4 v1, 0x7

    if-lt v0, v1, :cond_1

    .line 624
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 626
    const-class v3, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object v5, v4, v1

    :try_start_0
    const-string v6, "setChildrenDrawingOrderEnabled"

    invoke-virtual {v3, v6, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v2, p0, Landroid/support/v4/view/ViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

    .line 633
    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v1, 0x0

    aput-object v8, v7, v1

    invoke-virtual {v2, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 638
    :cond_1
    :goto_1
    return-void

    .line 628
    :catch_0
    move-exception v9

    const-string v6, "ViewPager"

    const-string v10, "Can\'t find setChildrenDrawingOrderEnabled"

    invoke-static {v6, v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 634
    :catch_1
    move-exception v11

    const-string v6, "ViewPager"

    const-string v10, "Error changing children drawing order"

    invoke-static {v6, v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setCurrentItem(I)V
    .locals 2

    .line 489
    const/4 v0, 0x0

    .line 489
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 490
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 491
    return-void

    :cond_0
    const/4 v1, 0x0

    .line 490
    goto :goto_0
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    .line 500
    const/4 v0, 0x0

    .line 500
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 500
    const/4 v0, 0x0

    .line 501
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 502
    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 510
    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .locals 11

    const/4 v0, 0x1

    .line 513
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    const/4 v3, 0x0

    .line 514
    invoke-direct {p0, v3}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 553
    :goto_0
    return-void

    :cond_1
    if-nez p3, :cond_2

    iget v2, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v2, p1, :cond_2

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    .line 518
    invoke-direct {p0, v3}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    :cond_2
    if-gez p1, :cond_5

    .line 523
    const/4 p1, 0x0

    .line 527
    :cond_3
    :goto_1
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    .line 528
    iget v5, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    add-int/2addr v5, v2

    if-gt p1, v5, :cond_4

    iget v5, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    sub-int/2addr v5, v2

    if-ge p1, v5, :cond_6

    .line 532
    :cond_4
    const/4 v2, 0x0

    :goto_2
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_6

    .line 533
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object v7, v8

    const/4 v3, 0x1

    iput-boolean v3, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    .line 532
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 524
    :cond_5
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v5

    if-lt p1, v5, :cond_3

    .line 525
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v5

    add-int/lit8 p1, v5, -0x1

    goto :goto_1

    .line 536
    :cond_6
    iget v5, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-eq v5, p1, :cond_9

    .line 538
    :goto_3
    iget-boolean v9, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    if-eqz v9, :cond_a

    .line 541
    iput p1, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-eqz v0, :cond_7

    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v10, :cond_7

    .line 543
    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v10, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_7
    if-eqz v0, :cond_8

    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v10, :cond_8

    .line 546
    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v10, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 548
    :cond_8
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    goto :goto_0

    :cond_9
    const/4 v0, 0x0

    .line 536
    goto :goto_3

    .line 550
    :cond_a
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->populate(I)V

    .line 551
    invoke-direct {p0, p1, p2, p4, v0}, Landroid/support/v4/view/ViewPager;->scrollToItem(IZIZ)V

    goto :goto_0
.end method

.method setInternalPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .locals 1

    .line 654
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 655
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 656
    return-object v0
.end method

.method public setOffscreenPageLimit(I)V
    .locals 5

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested offscreen page limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " too small; defaulting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "ViewPager"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    const/4 p1, 0x1

    .line 693
    :cond_0
    iget v4, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    if-eq p1, v4, :cond_1

    .line 694
    iput p1, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    .line 695
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 697
    :cond_1
    return-void
.end method

.method setOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V
    .locals 0

    .line 474
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mAdapterChangeListener:Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;

    .line 475
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 592
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 593
    return-void
.end method

.method public setPageMargin(I)V
    .locals 2

    .line 708
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    .line 709
    iput p1, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    .line 711
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v1

    .line 712
    invoke-direct {p0, v1, v1, p1, v0}, Landroid/support/v4/view/ViewPager;->recomputeScrollPosition(IIII)V

    .line 714
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    .line 715
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 3

    .line 744
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 745
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 732
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->refreshDrawableState()V

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setWillNotDraw(Z)V

    .line 735
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->invalidate()V

    .line 736
    return-void

    .line 734
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V
    .locals 7

    const/4 v0, 0x1

    .line 608
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 608
    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    if-eqz p2, :cond_2

    const/4 v3, 0x1

    .line 610
    :goto_0
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    if-eqz v4, :cond_3

    const/4 v5, 0x1

    :goto_1
    if-eq v3, v5, :cond_4

    const/4 v5, 0x1

    .line 611
    :goto_2
    iput-object p2, p0, Landroid/support/v4/view/ViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    .line 612
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->setChildrenDrawingOrderEnabledCompat(Z)V

    if-eqz v3, :cond_5

    if-eqz p1, :cond_0

    const/4 v2, 0x2

    move v0, v2

    :cond_0
    move v6, v0

    iput v6, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrder:I

    :goto_3
    if-eqz v5, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 620
    :cond_1
    return-void

    :cond_2
    const/4 v3, 0x0

    .line 609
    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    .line 610
    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    move v6, v2

    .line 616
    iput v6, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrder:I

    goto :goto_3
.end method

.method smoothScrollTo(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/view/ViewPager;->smoothScrollTo(III)V

    .line 779
    return-void
.end method

.method smoothScrollTo(III)V
    .locals 18

    move-object/from16 v0, p0

    .line 789
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 789
    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 827
    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    .line 794
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v6

    move-object/from16 v0, p0

    .line 795
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v8

    sub-int p1, p1, v6

    sub-int p2, p2, v8

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 797
    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/support/v4/view/ViewPager;->completeScroll(Z)V

    move-object/from16 v0, p0

    .line 800
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 797
    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    goto :goto_0

    .line 797
    :cond_1
    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 797
    const/4 v7, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    move-object/from16 v0, p0

    .line 808
    invoke-direct {v0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v9

    .line 809
    div-int/lit8 v10, v9, 0x2

    move/from16 v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-float v12, v11

    const v13, 0x3f800000    # 1.0f

    mul-float v12, v13, v12

    int-to-float v14, v9

    div-float/2addr v12, v14

    const v13, 0x3f800000    # 1.0f

    invoke-static {v13, v12}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 811
    int-to-float v12, v10

    int-to-float v15, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/support/v4/view/ViewPager;->distanceInfluenceForSnapDuration(F)F

    move-result v14

    mul-float/2addr v15, v14

    add-float v14, v12, v15

    move/from16 v0, p3

    .line 815
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-lez v11, :cond_2

    int-to-float v15, v11

    div-float v15, v14, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const v13, 0x447a0000    # 1000.0f

    mul-float v12, v13, v15

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v11

    mul-int/lit8 p3, v11, 0x4

    :goto_1
    const/16 v7, 0x258

    move/from16 v0, p3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v11

    move-object/from16 v0, p0

    .line 825
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v6

    move v2, v8

    move/from16 v3, p1

    move/from16 v4, p2

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    move-object/from16 v0, p0

    .line 826
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto/16 :goto_0

    .line 819
    :cond_2
    int-to-float v12, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v11, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v15

    mul-float v14, v12, v15

    move/from16 v0, p1

    .line 820
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-float v12, v11

    move-object/from16 v0, p0

    iget v11, v0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v15, v11

    add-float/2addr v15, v14

    div-float v14, v12, v15

    const v13, 0x3f800000    # 1.0f

    add-float v12, v13, v14

    const v13, 0x42c80000    # 100.0f

    mul-float/2addr v12, v13

    float-to-int v0, v12

    move/from16 p3, v0

    goto :goto_1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 3

    .line 749
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method
