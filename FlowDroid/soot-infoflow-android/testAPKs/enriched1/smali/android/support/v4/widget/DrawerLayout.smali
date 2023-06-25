.class public Landroid/support/v4/widget/DrawerLayout;
.super Landroid/view/ViewGroup;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;,
        Landroid/support/v4/widget/DrawerLayout$LayoutParams;,
        Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;,
        Landroid/support/v4/widget/DrawerLayout$SavedState;,
        Landroid/support/v4/widget/DrawerLayout$SimpleDrawerListener;,
        Landroid/support/v4/widget/DrawerLayout$DrawerListener;
    }
.end annotation


# static fields
.field private static final ALLOW_EDGE_LOCK:Z = false

.field private static final CHILDREN_DISALLOW_INTERCEPT:Z = true

.field private static final DEFAULT_SCRIM_COLOR:I = -0x67000000

.field private static final LAYOUT_ATTRS:[I

.field public static final LOCK_MODE_LOCKED_CLOSED:I = 0x1

.field public static final LOCK_MODE_LOCKED_OPEN:I = 0x2

.field public static final LOCK_MODE_UNLOCKED:I = 0x0

.field private static final MIN_DRAWER_MARGIN:I = 0x40

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field private static final PEEK_DELAY:I = 0xa0

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DrawerLayout"

.field private static final TOUCH_SLOP_SENSITIVITY:F = 1.0f


# instance fields
.field private mChildrenCanceledTouch:Z

.field private mDisallowInterceptRequested:Z

.field private mDrawerState:I

.field private mFirstLayout:Z

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private final mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

.field private final mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

.field private mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

.field private mLockModeLeft:I

.field private mLockModeRight:I

.field private mMinDrawerMargin:I

.field private final mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

.field private final mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

.field private mScrimColor:I

.field private mScrimOpacity:F

.field private mScrimPaint:Landroid/graphics/Paint;

.field private mShadowLeft:Landroid/graphics/drawable/Drawable;

.field private mShadowRight:Landroid/graphics/drawable/Drawable;

.field private mTitleLeft:Ljava/lang/CharSequence;

.field private mTitleRight:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x1

    new-array v0, v1, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/widget/DrawerLayout;->LAYOUT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 223
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 227
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .line 230
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, -0x67000000

    iput v0, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    .line 139
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 147
    const/4 v0, 0x1

    .line 147
    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    .line 232
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v4, v3, Landroid/util/DisplayMetrics;->density:F

    const v6, 0x42800000    # 64.0f

    mul-float v5, v6, v4

    const v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int p3, v5

    iput p3, p0, Landroid/support/v4/widget/DrawerLayout;->mMinDrawerMargin:I

    const v6, 0x43c80000    # 400.0f

    mul-float v4, v6, v4

    .line 236
    new-instance v7, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    .line 236
    const/4 v0, 0x3

    invoke-direct {v7, p0, v0}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;-><init>(Landroid/support/v4/widget/DrawerLayout;I)V

    iput-object v7, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    .line 237
    new-instance v7, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    .line 237
    const/4 v0, 0x5

    invoke-direct {v7, p0, v0}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;-><init>(Landroid/support/v4/widget/DrawerLayout;I)V

    iput-object v7, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    .line 239
    iget-object v7, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    const v6, 0x3f800000    # 1.0f

    invoke-static {p0, v6, v7}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v8

    iput-object v8, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    .line 240
    iget-object v8, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v0, 0x1

    move p3, v0

    invoke-virtual {v8, p3}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 241
    iget-object v8, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v8, v4}, Landroid/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 242
    iget-object v7, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    iget-object v8, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v7, v8}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->setDragger(Landroid/support/v4/widget/ViewDragHelper;)V

    .line 244
    iget-object v7, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    const v6, 0x3f800000    # 1.0f

    invoke-static {p0, v6, v7}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v8

    iput-object v8, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    .line 245
    iget-object v8, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    .line 245
    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 246
    iget-object v8, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v8, v4}, Landroid/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 247
    iget-object v7, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    iget-object v8, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v7, v8}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->setDragger(Landroid/support/v4/widget/ViewDragHelper;)V

    const/4 v0, 0x1

    .line 250
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->setFocusableInTouchMode(Z)V

    .line 252
    new-instance v9, Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;

    invoke-direct {v9, p0}, Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;-><init>(Landroid/support/v4/widget/DrawerLayout;)V

    invoke-static {p0, v9}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 252
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewGroupCompat;->setMotionEventSplittingEnabled(Landroid/view/ViewGroup;Z)V

    .line 254
    return-void
.end method

.method static synthetic access$100()[I
    .locals 1

    .line 73
    sget-object v0, Landroid/support/v4/widget/DrawerLayout;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v4/widget/DrawerLayout;)Landroid/view/View;
    .locals 1

    .line 73
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findVisibleDrawer()Landroid/view/View;
    .locals 5

    .line 1250
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    .line 1251
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1252
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1253
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1257
    return-object v2

    .line 1251
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1251
    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method

.method static gravityToString(I)Ljava/lang/String;
    .locals 4

    .line 631
    and-int/lit8 v0, p0, 0x3

    .line 631
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 631
    const-string v2, "LEFT"

    .line 637
    return-object v2

    .line 634
    :cond_0
    and-int/lit8 v0, p0, 0x5

    .line 634
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 634
    const-string v2, "RIGHT"

    return-object v2

    .line 637
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static hasOpaqueBackground(Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x0

    .line 836
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 838
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    .line 838
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    .line 840
    :cond_0
    return v0
.end method

.method private hasPeekingDrawer()Z
    .locals 8

    .line 1211
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    .line 1212
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1213
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v4, v5

    .line 1214
    iget-boolean v6, v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    if-eqz v6, :cond_0

    .line 1214
    const/4 v7, 0x1

    .line 1218
    return v7

    .line 1212
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1212
    :cond_1
    const/4 v7, 0x0

    return v7
.end method

.method private hasVisibleDrawer()Z
    .locals 2

    .line 1246
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1246
    const/4 v1, 0x1

    return v1

    .line 1246
    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method cancelChildViewTouch()V
    .locals 19

    move-object/from16 v0, p0

    .line 1262
    iget-boolean v8, v0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    if-nez v8, :cond_1

    .line 1263
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-wide v0, v9

    move-wide v2, v9

    move v4, v12

    move v5, v13

    move v6, v14

    move v7, v15

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v11

    move-object/from16 v0, p0

    .line 1266
    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v16

    const/16 v17, 0x0

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p0

    move/from16 v1, v17

    .line 1268
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1267
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 1270
    :cond_0
    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    .line 1273
    :cond_1
    return-void
.end method

.method checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z
    .locals 2

    .line 577
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v0

    .line 578
    and-int/2addr v0, p2

    if-ne v0, p2, :cond_0

    .line 578
    const/4 v1, 0x1

    return v1

    .line 578
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 2

    instance-of v0, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

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

.method public closeDrawer(I)V
    .locals 5

    .line 1137
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1139
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No drawer view found with gravity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1142
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 1143
    return-void
.end method

.method public closeDrawer(Landroid/view/View;)V
    .locals 13

    .line 1111
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1112
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a sliding drawer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1115
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    if-eqz v0, :cond_1

    .line 1116
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v6, v7

    const/4 v8, 0x0

    iput v8, v6, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/4 v9, 0x0

    iput-boolean v9, v6, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    .line 1127
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1128
    return-void

    :cond_1
    const/4 v9, 0x3

    invoke-virtual {p0, p1, v9}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1121
    iget-object v10, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v11

    neg-int v11, v11

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-virtual {v10, p1, v11, v12}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    .line 1124
    :cond_2
    iget-object v10, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v12

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {v10, p1, v12, v11}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0
.end method

.method public closeDrawers()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1031
    return-void
.end method

.method closeDrawers(Z)V
    .locals 13

    .line 1034
    const/4 v0, 0x0

    .line 1035
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    .line 1036
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 1037
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1038
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v5, v6

    .line 1040
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz p1, :cond_1

    iget-boolean v7, v5, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    if-nez v7, :cond_1

    .line 1036
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1044
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v8

    const/4 v9, 0x3

    invoke-virtual {p0, v3, v9}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1047
    iget-object v10, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    neg-int v8, v8

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {v10, v3, v8, v11}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v7

    or-int/2addr v0, v7

    :goto_2
    const/4 v9, 0x0

    iput-boolean v9, v5, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    goto :goto_1

    .line 1050
    :cond_2
    iget-object v10, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v11

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v10, v3, v11, v8}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v7

    or-int/2addr v0, v7

    goto :goto_2

    .line 1057
    :cond_3
    iget-object v12, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v12}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 1058
    iget-object v12, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v12}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    if-eqz v0, :cond_4

    .line 1061
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1063
    :cond_4
    return-void
.end method

.method public computeScroll()V
    .locals 12

    .line 821
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    .line 822
    const/4 v1, 0x0

    .line 823
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 824
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v5, v6

    iget v7, v5, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    .line 825
    invoke-static {v1, v7}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 823
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 827
    :cond_0
    iput v1, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    .line 830
    iget-object v8, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v9

    iget-object v8, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v11

    or-int/2addr v9, v11

    if-eqz v9, :cond_1

    .line 831
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 833
    :cond_1
    return-void
.end method

.method dispatchOnDrawerClosed(Landroid/view/View;)V
    .locals 6

    .line 517
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v1, v2

    .line 518
    iget-boolean v3, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    iput-boolean v4, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    .line 520
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    if-eqz v5, :cond_0

    .line 521
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v5, p1}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerClosed(Landroid/view/View;)V

    .line 527
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->hasWindowFocus()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 528
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getRootView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 528
    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 534
    :cond_1
    return-void
.end method

.method dispatchOnDrawerOpened(Landroid/view/View;)V
    .locals 6

    .line 537
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v1, v2

    .line 538
    iget-boolean v3, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    if-nez v3, :cond_1

    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    .line 540
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    if-eqz v5, :cond_0

    .line 541
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v5, p1}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerOpened(Landroid/view/View;)V

    .line 541
    :cond_0
    const/16 v4, 0x20

    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->sendAccessibilityEvent(I)V

    .line 545
    :cond_1
    return-void
.end method

.method dispatchOnDrawerSlide(Landroid/view/View;F)V
    .locals 1

    .line 548
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerSlide(Landroid/view/View;F)V

    .line 551
    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 27

    move-object/from16 v0, p0

    .line 845
    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v7

    .line 847
    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v9

    move-object/from16 v0, p1

    .line 849
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-result v10

    if-eqz v7, :cond_4

    move-object/from16 v0, p0

    .line 851
    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v11

    .line 852
    const/4 v12, 0x0

    :goto_0
    if-ge v12, v11, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p2

    if-eq v13, v0, :cond_0

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-nez v14, :cond_0

    invoke-static {v13}, Landroid/support/v4/widget/DrawerLayout;->hasOpaqueBackground(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v14

    if-ge v14, v6, :cond_1

    .line 852
    :cond_0
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v13, v1}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 861
    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v14

    if-le v14, v8, :cond_0

    move v8, v14

    goto :goto_1

    .line 864
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v14

    if-ge v14, v9, :cond_0

    move v9, v14

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v14

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v8, v1, v9, v14}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    .line 870
    invoke-super {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    move/from16 v17, v0

    const/16 v19, 0x0

    cmpl-float v18, v17, v19

    if-lez v18, :cond_6

    if-eqz v7, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    move/from16 v20, v0

    const v16, -0x1000000

    and-int v20, v20, v16

    ushr-int/lit8 v14, v20, 0x18

    .line 875
    int-to-float v0, v14

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    move/from16 v21, v0

    mul-float v17, v17, v21

    move/from16 v0, v17

    float-to-int v12, v0

    .line 876
    shl-int/lit8 v20, v12, 0x18

    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    const v16, 0xffffff

    and-int v10, v10, v16

    or-int v11, v20, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 879
    int-to-float v0, v8

    move/from16 v23, v0

    int-to-float v0, v9

    move/from16 v21, v0

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v19

    move/from16 v3, v21

    move/from16 v4, v17

    move-object/from16 v5, v22

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 902
    :cond_5
    return v15

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    if-eqz v24, :cond_7

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    move-object/from16 v0, p2

    .line 882
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    move-object/from16 v25, v0

    int-to-float v0, v11

    move/from16 v23, v0

    move-object/from16 v0, v25

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->getEdgeSize()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v23, v23, v17

    const v19, 0x3f800000    # 1.0f

    move/from16 v0, v23

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v23

    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    move-object/from16 v0, p2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v20

    add-int v10, v11, v10

    move-object/from16 v0, p2

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v12

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v11, v1, v10, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    const v19, 0x437f0000    # 255.0f

    mul-float v26, v19, v17

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return v15

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    if-eqz v24, :cond_5

    const/16 v16, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v20

    move-object/from16 v0, p2

    .line 892
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v11

    move-object/from16 v0, p0

    .line 893
    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    move-object/from16 v25, v0

    sub-int/2addr v10, v11

    int-to-float v0, v10

    move/from16 v23, v0

    move-object/from16 v0, v25

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->getEdgeSize()I

    move-result v10

    int-to-float v0, v10

    move/from16 v17, v0

    div-float v23, v23, v17

    const v19, 0x3f800000    # 1.0f

    move/from16 v0, v23

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v23

    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    sub-int v20, v11, v20

    move-object/from16 v0, p2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v10

    move-object/from16 v0, p2

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v12

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    const v19, 0x437f0000    # 255.0f

    mul-float v26, v19, v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return v15
.end method

.method findDrawerWithGravity(I)Landroid/view/View;
    .locals 5

    .line 611
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    and-int/lit8 p1, v0, 0x7

    .line 613
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    .line 614
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 615
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 616
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v3

    .line 617
    and-int/lit8 v3, v3, 0x7

    if-ne v3, p1, :cond_0

    .line 621
    return-object v2

    .line 614
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 614
    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method

.method findOpenDrawer()Landroid/view/View;
    .locals 8

    .line 582
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    .line 583
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 584
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 585
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v4, v5

    iget-boolean v6, v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    if-eqz v6, :cond_0

    .line 589
    return-object v2

    .line 583
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 583
    :cond_1
    const/4 v7, 0x0

    return-object v7
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .line 1223
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1223
    const/4 v1, -0x1

    .line 1223
    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1242
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 6

    instance-of v0, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v3, p1

    check-cast v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v2, v3

    invoke-direct {v1, v2}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)V

    return-object v1

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v5, p1

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v4, v5

    invoke-direct {v1, v4}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v1

    :cond_1
    new-instance v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-direct {v1, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method public getDrawerLockMode(I)I
    .locals 2

    .line 415
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 418
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    .line 422
    return v0

    .line 418
    :cond_0
    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    .line 420
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    return v0

    .line 420
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public getDrawerLockMode(Landroid/view/View;)I
    .locals 2

    .line 433
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v0

    .line 433
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 435
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    .line 439
    return v0

    .line 435
    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 437
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    return v0

    .line 437
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public getDrawerTitle(I)Ljava/lang/CharSequence;
    .locals 4

    .line 471
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 474
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mTitleLeft:Ljava/lang/CharSequence;

    .line 478
    return-object v2

    .line 474
    :cond_0
    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    .line 476
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mTitleRight:Ljava/lang/CharSequence;

    return-object v2

    .line 476
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method getDrawerViewAbsoluteGravity(Landroid/view/View;)I
    .locals 5

    .line 572
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v1, v2

    iget v3, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 573
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v4

    invoke-static {v3, v4}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v4

    return v4
.end method

.method getDrawerViewOffset(Landroid/view/View;)F
    .locals 4

    .line 564
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v1, v2

    iget v3, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    return v3
.end method

.method isContentView(Landroid/view/View;)Z
    .locals 5

    .line 906
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v1, v2

    iget v3, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    if-nez v3, :cond_0

    const/4 v4, 0x1

    return v4

    :cond_0
    const/4 v4, 0x0

    return v4
.end method

.method public isDrawerOpen(I)Z
    .locals 3

    .line 1172
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1174
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v1

    .line 1176
    return v1

    .line 1174
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isDrawerOpen(Landroid/view/View;)Z
    .locals 8

    .line 1156
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1157
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a drawer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1159
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v6, v7

    iget-boolean v0, v6, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    return v0
.end method

.method isDrawerView(Landroid/view/View;)Z
    .locals 6

    .line 910
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v1, v2

    iget v3, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 911
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v4

    invoke-static {v3, v4}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v3

    .line 913
    and-int/lit8 v4, v3, 0x7

    if-eqz v4, :cond_0

    .line 913
    const/4 v5, 0x1

    return v5

    .line 913
    :cond_0
    const/4 v5, 0x0

    return v5
.end method

.method public isDrawerVisible(I)Z
    .locals 3

    .line 1203
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1205
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    move-result v1

    .line 1207
    return v1

    .line 1205
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isDrawerVisible(Landroid/view/View;)Z
    .locals 12

    .line 1188
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1189
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a drawer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1191
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v6, v7

    iget v8, v6, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/4 v10, 0x0

    cmpl-float v9, v8, v10

    if-lez v9, :cond_1

    const/4 v11, 0x1

    return v11

    :cond_1
    const/4 v11, 0x0

    return v11
.end method

.method moveDrawerToOffset(Landroid/view/View;F)V
    .locals 6

    .line 593
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewOffset(Landroid/view/View;)F

    move-result v0

    .line 594
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 595
    int-to-float v2, v1

    mul-float/2addr v2, v0

    float-to-int v3, v2

    .line 596
    int-to-float v2, v1

    mul-float/2addr v2, p2

    float-to-int v1, v2

    .line 597
    sub-int/2addr v1, v3

    const/4 v5, 0x3

    invoke-virtual {p0, p1, v5}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 601
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    .line 602
    return-void

    .line 599
    :cond_0
    neg-int v1, v1

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 648
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    .line 650
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 642
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    .line 644
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16

    const/4 v1, 0x0

    move-object/from16 v0, p1

    .line 918
    invoke-static {v0}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v2

    move-object/from16 v0, p0

    .line 921
    iget-object v3, v0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    or-int v5, v4, v5

    .line 924
    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :cond_0
    :goto_0
    if-nez v5, :cond_1

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0}, Landroid/support/v4/widget/DrawerLayout;->hasPeekingDrawer()Z

    move-result v4

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    if-eqz v4, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    :sswitch_0
    move-object/from16 v0, p1

    .line 928
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    move-object/from16 v0, p1

    .line 929
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    move-object/from16 v0, p0

    .line 930
    iput v6, v0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionX:F

    move-object/from16 v0, p0

    .line 931
    iput v7, v0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionY:F

    move-object/from16 v0, p0

    .line 932
    iget v8, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    const/4 v10, 0x0

    cmpl-float v9, v8, v10

    if-lez v9, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    float-to-int v11, v6

    float-to-int v2, v7

    invoke-virtual {v3, v11, v2}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 934
    const/4 v4, 0x1

    .line 936
    :cond_3
    const/4 v14, 0x0

    move-object/from16 v0, p0

    .line 936
    iput-boolean v14, v0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 937
    const/4 v14, 0x0

    move-object/from16 v0, p0

    .line 937
    iput-boolean v14, v0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_0

    :sswitch_1
    move-object/from16 v0, p0

    .line 943
    iget-object v3, v0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v14, 0x3

    invoke-virtual {v3, v14}, Landroid/support/v4/widget/ViewDragHelper;->checkTouchSlop(I)Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    .line 944
    iget-object v15, v0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v15}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    move-object/from16 v0, p0

    .line 945
    iget-object v15, v0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v15}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    goto :goto_0

    .line 945
    :sswitch_2
    const/4 v14, 0x1

    move-object/from16 v0, p0

    .line 952
    invoke-virtual {v0, v14}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    .line 953
    const/4 v14, 0x0

    move-object/from16 v0, p0

    .line 953
    iput-boolean v14, v0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 954
    const/4 v14, 0x0

    move-object/from16 v0, p0

    .line 954
    iput-boolean v14, v0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->hasVisibleDrawer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1278
    invoke-static {p2}, Landroid/support/v4/view/KeyEventCompat;->startTracking(Landroid/view/KeyEvent;)V

    const/4 v0, 0x1

    .line 1281
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 1287
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_0

    .line 1289
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    :cond_0
    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 1293
    return v0

    :cond_1
    const/4 v0, 0x0

    return v0

    .line 1293
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 19

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/support/v4/widget/DrawerLayout;->mInLayout:Z

    .line 731
    sub-int v3, p4, p2

    move-object/from16 v0, p0

    .line 732
    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v4

    .line 733
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 736
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    .line 736
    const/16 v2, 0x8

    if-ne v7, v2, :cond_1

    .line 733
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 740
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v9, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 743
    iget v0, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 p4, v0

    iget v0, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 p2, v0

    iget v7, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int v11, v7, v11

    iget v12, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v12, v7

    move/from16 v0, p4

    move/from16 v1, p2

    invoke-virtual {v6, v0, v1, v11, v12}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 747
    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 748
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v2}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 753
    neg-int v13, v7

    int-to-float v14, v7

    iget v15, v9, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    mul-float v15, v14, v15

    float-to-int v12, v15

    add-int p2, v13, v12

    .line 754
    add-int v13, v7, p2

    int-to-float v15, v13

    int-to-float v14, v7

    div-float v14, v15, v14

    .line 760
    :goto_2
    iget v15, v9, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    cmpl-float v16, v14, v15

    if-eqz v16, :cond_5

    const/16 p1, 0x1

    .line 762
    :goto_3
    iget v13, v9, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    and-int/lit8 v11, v13, 0x70

    sparse-switch v11, :sswitch_data_0

    goto :goto_4

    :goto_4
    add-int v12, p2, v7

    iget v7, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 767
    iget v13, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v7, v7, p4

    move/from16 v0, p2

    invoke-virtual {v6, v0, v13, v12, v7}, Landroid/view/View;->layout(IIII)V

    :goto_5
    if-eqz p1, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Landroid/support/v4/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    .line 802
    :cond_3
    iget v15, v9, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/16 v17, 0x0

    cmpl-float v16, v15, v17

    if-lez v16, :cond_8

    const/16 v16, 0x0

    .line 803
    :goto_6
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v13

    move/from16 v0, v16

    if-eq v13, v0, :cond_0

    move/from16 v0, v16

    .line 804
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 756
    :cond_4
    int-to-float v15, v7

    iget v14, v9, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    mul-float/2addr v15, v14

    float-to-int v13, v15

    sub-int p2, v3, v13

    .line 757
    sub-int v13, v3, p2

    int-to-float v15, v13

    int-to-float v14, v7

    div-float v14, v15, v14

    goto :goto_2

    :cond_5
    const/16 p1, 0x0

    goto :goto_3

    .line 773
    :sswitch_0
    sub-int v11, p5, p3

    .line 774
    iget v13, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v13, v11, v13

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int/2addr v13, v12

    add-int v12, p2, v7

    iget v7, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v7, v11, v7

    move/from16 v0, p2

    invoke-virtual {v6, v0, v13, v12, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_5

    .line 782
    :sswitch_1
    sub-int v13, p5, p3

    .line 783
    sub-int v12, v13, p4

    div-int/lit8 v11, v12, 0x2

    .line 787
    iget v12, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ge v11, v12, :cond_7

    .line 788
    iget v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 792
    :cond_6
    :goto_7
    add-int v13, p2, v7

    add-int v12, v11, p4

    move/from16 v0, p2

    invoke-virtual {v6, v0, v11, v13, v12}, Landroid/view/View;->layout(IIII)V

    goto :goto_5

    :cond_7
    iget v0, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v18, v0

    .line 789
    add-int v12, v11, p4

    sub-int v18, v13, v18

    move/from16 v0, v18

    if-le v12, v0, :cond_6

    .line 790
    iget v0, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v18, v0

    sub-int v18, v13, v18

    sub-int v11, v18, p4

    goto :goto_7

    :cond_8
    const/16 v16, 0x4

    goto :goto_6

    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/support/v4/widget/DrawerLayout;->mInLayout:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    .line 810
    return-void

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 22

    move/from16 v0, p1

    .line 654
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    move/from16 v0, p2

    .line 655
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    move/from16 v0, p1

    .line 656
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    move/from16 v0, p2

    .line 657
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 657
    const v7, 0x40000000    # 2.0f

    if-ne v3, v7, :cond_0

    .line 657
    const v7, 0x40000000    # 2.0f

    if-eq v4, v7, :cond_2

    :cond_0
    move-object/from16 v0, p0

    .line 660
    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->isInEditMode()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 660
    const v7, -0x80000000

    if-ne v3, v7, :cond_3

    .line 660
    :cond_1
    :goto_0
    const v7, -0x80000000

    if-ne v4, v7, :cond_4

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/support/v4/widget/DrawerLayout;->setMeasuredDimension(II)V

    move-object/from16 v0, p0

    .line 688
    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v9

    .line 689
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v9, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 692
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v4

    .line 692
    const/16 v7, 0x8

    if-ne v4, v7, :cond_6

    .line 689
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    if-nez v3, :cond_1

    .line 669
    const/16 v5, 0x12c

    goto :goto_0

    :cond_4
    if-nez v4, :cond_2

    .line 676
    const/16 v6, 0x12c

    goto :goto_1

    .line 679
    :cond_5
    new-instance v11, Ljava/lang/IllegalArgumentException;

    .line 679
    const-string v12, "DrawerLayout must be measured with MeasureSpec.EXACTLY."

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 696
    :cond_6
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    move-object v15, v13

    check-cast v15, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 700
    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v4, v5, v4

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v16, v0

    sub-int v4, v4, v16

    const v7, 0x40000000    # 2.0f

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 702
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v16, v0

    sub-int v16, v6, v16

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v17, v0

    sub-int v17, v16, v17

    const v7, 0x40000000    # 2.0f

    move/from16 v0, v17

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    move/from16 v0, v16

    .line 704
    invoke-virtual {v10, v4, v0}, Landroid/view/View;->measure(II)V

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v17

    and-int/lit8 v16, v17, 0x7

    .line 708
    const/4 v7, 0x0

    .line 708
    and-int v17, v7, v16

    if-eqz v17, :cond_8

    .line 709
    new-instance v18, Ljava/lang/IllegalStateException;

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v0, v19

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Child drawer has absolute gravity "

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move/from16 v0, v16

    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v12, " but this "

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v12, "DrawerLayout"

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v12, " already has a "

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v12, "drawer view along that edge"

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout;->mMinDrawerMargin:I

    move/from16 v17, v0

    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v17, v17, v4

    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int v17, v17, v4

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v16, v0

    move/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v16

    .line 716
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v21, v0

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v17, v0

    add-int v21, v21, v17

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v21

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v4

    move/from16 v0, v16

    .line 719
    invoke-virtual {v10, v0, v4}, Landroid/view/View;->measure(II)V

    goto/16 :goto_3

    .line 721
    :cond_9
    new-instance v18, Ljava/lang/IllegalStateException;

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v0, v19

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Child "

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v12, " at index "

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v12, " does not have a valid layout_gravity - must be Gravity.LEFT, "

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v12, "Gravity.RIGHT or Gravity.NO_GRAVITY"

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 726
    :cond_a
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    move-object v1, p1

    check-cast v1, Landroid/support/v4/widget/DrawerLayout$SavedState;

    move-object v0, v1

    .line 1299
    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1301
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    if-eqz v2, :cond_0

    .line 1302
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1304
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    .line 1308
    :cond_0
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeLeft:I

    .line 1308
    const/4 v4, 0x3

    invoke-virtual {p0, v2, v4}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 1309
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeRight:I

    .line 1309
    const/4 v4, 0x5

    invoke-virtual {p0, v2, v4}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 1310
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 9

    .line 1314
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1316
    new-instance v1, Landroid/support/v4/widget/DrawerLayout$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/DrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1318
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v2

    .line 1319
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 1320
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1321
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1319
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1325
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v7, v8

    .line 1326
    iget-boolean v5, v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    if-eqz v5, :cond_0

    .line 1327
    iget v3, v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    iput v3, v1, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    .line 1333
    :cond_2
    iget v3, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    iput v3, v1, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeLeft:I

    .line 1334
    iget v3, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    iput v3, v1, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeRight:I

    .line 1336
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 963
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 964
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 966
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 969
    and-int/lit16 v2, v1, 0xff

    .line 1010
    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :goto_0
    :sswitch_0
    const/4 v3, 0x1

    .line 1010
    return v3

    .line 971
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 972
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 973
    iput v4, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionX:F

    .line 974
    iput v5, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionY:F

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    const/4 v3, 0x1

    return v3

    .line 981
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 982
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 983
    const/4 v7, 0x1

    .line 984
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    float-to-int v1, v4

    float-to-int v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {p0, v8}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 986
    iget v5, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionX:F

    sub-float v5, v4, v5

    .line 987
    iget v4, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionY:F

    sub-float v4, v6, v4

    .line 988
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v1

    .line 989
    mul-float v6, v5, v5

    mul-float/2addr v4, v4

    add-float/2addr v6, v4

    mul-int v2, v1, v1

    int-to-float v4, v2

    cmpg-float v10, v6, v4

    if-gez v10, :cond_0

    .line 991
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->findOpenDrawer()Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 993
    invoke-virtual {p0, v8}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v2

    .line 993
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v7, 0x1

    .line 997
    :cond_0
    :goto_1
    invoke-virtual {p0, v7}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    const/4 v3, 0x1

    return v3

    .line 993
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 993
    :sswitch_3
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    const/4 v3, 0x1

    return v3

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x3 -> :sswitch_3
    .end sparse-switch
.end method

.method public openDrawer(I)V
    .locals 5

    .line 1097
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1099
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No drawer view found with gravity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1102
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    .line 1103
    return-void
.end method

.method public openDrawer(Landroid/view/View;)V
    .locals 13

    .line 1071
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1072
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a sliding drawer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1075
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    if-eqz v0, :cond_1

    .line 1076
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v6, v7

    const v8, 0x3f800000    # 1.0f

    iput v8, v6, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/4 v9, 0x1

    iput-boolean v9, v6, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    .line 1087
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1088
    return-void

    :cond_1
    const/4 v9, 0x3

    invoke-virtual {p0, p1, v9}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1081
    iget-object v10, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v11

    const/4 v9, 0x0

    invoke-virtual {v10, p1, v9, v11}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    .line 1083
    :cond_2
    iget-object v10, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v11

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v12

    sub-int v12, v11, v12

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {v10, p1, v12, v11}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    .line 1018
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1020
    iput-boolean p1, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    if-eqz p1, :cond_0

    .line 1020
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1024
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 814
    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mInLayout:Z

    if-nez v0, :cond_0

    .line 815
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 817
    :cond_0
    return-void
.end method

.method public setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V
    .locals 0

    .line 310
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    .line 311
    return-void
.end method

.method public setDrawerLockMode(I)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 329
    return-void
.end method

.method public setDrawerLockMode(II)V
    .locals 4

    .line 351
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    invoke-static {p2, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result p2

    const/4 v1, 0x3

    if-ne p2, v1, :cond_3

    .line 354
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 354
    const/4 v1, 0x3

    if-ne p2, v1, :cond_4

    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    .line 361
    :goto_1
    invoke-virtual {v2}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 378
    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_2

    .line 378
    :cond_2
    :goto_2
    return-void

    :cond_3
    const/4 v1, 0x5

    if-ne p2, v1, :cond_0

    .line 356
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    goto :goto_0

    .line 360
    :cond_4
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    goto :goto_1

    .line 365
    :sswitch_0
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 367
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    goto :goto_2

    .line 371
    :sswitch_1
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 373
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
    .end sparse-switch
.end method

.method public setDrawerLockMode(ILandroid/view/View;)V
    .locals 9

    .line 399
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "drawer with appropriate layout_gravity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 403
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v6, v7

    iget v8, v6, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 404
    invoke-virtual {p0, p1, v8}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 405
    return-void
.end method

.method public setDrawerShadow(II)V
    .locals 2

    .line 290
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V

    .line 291
    return-void
.end method

.method public setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V
    .locals 2

    .line 270
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    invoke-static {p2, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result p2

    .line 272
    and-int/lit8 v0, p2, 0x3

    .line 272
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 273
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    .line 274
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 276
    :cond_0
    and-int/lit8 v0, p2, 0x5

    .line 276
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 277
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    .line 278
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 280
    :cond_1
    return-void
.end method

.method public setDrawerTitle(ILjava/lang/CharSequence;)V
    .locals 2

    .line 453
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 456
    iput-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->mTitleLeft:Ljava/lang/CharSequence;

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 458
    iput-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->mTitleRight:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method setDrawerViewOffset(Landroid/view/View;F)V
    .locals 5

    .line 554
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v1, v2

    .line 555
    iget v3, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    cmpl-float v4, p2, v3

    if-nez v4, :cond_0

    .line 561
    :goto_0
    return-void

    .line 559
    :cond_0
    iput p2, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    .line 560
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;->dispatchOnDrawerSlide(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public setScrimColor(I)V
    .locals 0

    .line 299
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    .line 300
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 301
    return-void
.end method

.method updateDrawerState(IILandroid/view/View;)V
    .locals 12

    .line 486
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result p1

    .line 487
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 491
    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-eqz p3, :cond_1

    if-nez p2, :cond_1

    .line 499
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v4, v5

    .line 500
    iget v6, v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/4 v8, 0x0

    cmpl-float v7, v6, v8

    if-nez v7, :cond_6

    .line 501
    invoke-virtual {p0, p3}, Landroid/support/v4/widget/DrawerLayout;->dispatchOnDrawerClosed(Landroid/view/View;)V

    .line 507
    :cond_1
    :goto_1
    iget v9, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerState:I

    if-eq v1, v9, :cond_2

    .line 508
    iput v1, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerState:I

    .line 510
    iget-object v10, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    if-eqz v10, :cond_2

    .line 511
    iget-object v10, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v10, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerStateChanged(I)V

    .line 514
    :cond_2
    return-void

    .line 511
    :cond_3
    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    .line 511
    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 493
    :cond_4
    const/4 v1, 0x2

    goto :goto_0

    .line 495
    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    .line 502
    :cond_6
    iget v11, v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    const v8, 0x3f800000    # 1.0f

    cmpl-float v7, v11, v8

    if-nez v7, :cond_1

    .line 503
    invoke-virtual {p0, p3}, Landroid/support/v4/widget/DrawerLayout;->dispatchOnDrawerOpened(Landroid/view/View;)V

    goto :goto_1
.end method
