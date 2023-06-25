.class public Landroid/support/v7/internal/widget/ActionBarView;
.super Landroid/support/v7/internal/widget/AbsActionBarView;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;,
        Landroid/support/v7/internal/widget/ActionBarView$HomeView;,
        Landroid/support/v7/internal/widget/ActionBarView$SavedState;
    }
.end annotation


# static fields
.field private static final DEFAULT_CUSTOM_GRAVITY:I = 0x13

.field public static final DISPLAY_DEFAULT:I = 0x0

.field private static final DISPLAY_RELAYOUT_MASK:I = 0x1f

.field private static final TAG:Ljava/lang/String; = "ActionBarView"


# instance fields
.field private mCallback:Landroid/support/v7/app/ActionBar$OnNavigationListener;

.field private mContext:Landroid/content/Context;

.field private mContextView:Landroid/support/v7/internal/widget/ActionBarContextView;

.field private mCustomNavView:Landroid/view/View;

.field private mDisplayOptions:I

.field mExpandedActionView:Landroid/view/View;

.field private final mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

.field private mExpandedHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

.field private mExpandedMenuPresenter:Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

.field private mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIncludeTabs:Z

.field private mIndeterminateProgressStyle:I

.field private mIndeterminateProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

.field private mIsCollapsable:Z

.field private mIsCollapsed:Z

.field private mItemPadding:I

.field private mListNavLayout:Landroid/widget/LinearLayout;

.field private mLogo:Landroid/graphics/drawable/Drawable;

.field private mLogoNavItem:Landroid/support/v7/internal/view/menu/ActionMenuItem;

.field private final mNavItemSelectedListener:Landroid/support/v7/internal/widget/AdapterViewICS$OnItemSelectedListener;

.field private mNavigationMode:I

.field private mOptionsMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

.field private mProgressBarPadding:I

.field private mProgressStyle:I

.field private mProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

.field private mSpinner:Landroid/support/v7/internal/widget/SpinnerICS;

.field private mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mSubtitleStyleRes:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

.field private mTabSelector:Ljava/lang/Runnable;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleStyleRes:I

.field private mTitleUpView:Landroid/view/View;

.field private mTitleView:Landroid/widget/TextView;

.field private final mUpClickListener:Landroid/view/View$OnClickListener;

.field private mUserTitle:Z

.field mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 166
    invoke-direct {v0, v1, v2}, Landroid/support/v7/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v7, -0x1

    move-object/from16 v0, p0

    iput v7, v0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 135
    new-instance v8, Landroid/support/v7/internal/widget/ActionBarView$1;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/support/v7/internal/widget/ActionBarView$1;-><init>(Landroid/support/v7/internal/widget/ActionBarView;)V

    move-object/from16 v0, p0

    iput-object v8, v0, Landroid/support/v7/internal/widget/ActionBarView;->mNavItemSelectedListener:Landroid/support/v7/internal/widget/AdapterViewICS$OnItemSelectedListener;

    .line 149
    new-instance v9, Landroid/support/v7/internal/widget/ActionBarView$2;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/support/v7/internal/widget/ActionBarView$2;-><init>(Landroid/support/v7/internal/widget/ActionBarView;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    .line 159
    new-instance v10, Landroid/support/v7/internal/widget/ActionBarView$3;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/support/v7/internal/widget/ActionBarView$3;-><init>(Landroid/support/v7/internal/widget/ActionBarView;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Landroid/support/v7/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/support/v7/internal/widget/ActionBarView;->setBackgroundResource(I)V

    .line 172
    sget-object v11, Landroid/support/v7/appcompat/R$styleable;->ActionBar:[I

    sget v12, Landroid/support/v7/appcompat/R$attr;->actionBarStyle:I

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v11, v12, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v13

    move-object/from16 v0, p1

    .line 175
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    move-object/from16 v0, p1

    .line 176
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const/4 v7, 0x2

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Landroid/support/v7/internal/widget/ActionBarView;->mNavigationMode:I

    const/4 v7, 0x0

    invoke-virtual {v13, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    const/4 v7, 0x4

    invoke-virtual {v13, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    const/16 v7, 0x8

    invoke-virtual {v13, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 183
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 183
    const/16 v7, 0x9

    if-lt v12, v7, :cond_1

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v21, p1

    check-cast v21, Landroid/app/Activity;

    move-object/from16 v20, v21

    :try_start_0
    move-object/from16 v0, v20

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v18
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 192
    invoke-virtual {v14, v15}, Landroid/content/pm/ApplicationInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    :cond_1
    const/4 v7, 0x7

    invoke-virtual {v13, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    if-nez v18, :cond_3

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v19, v0

    if-eqz v19, :cond_2

    move-object/from16 v23, p1

    check-cast v23, Landroid/app/Activity;

    move-object/from16 v20, v23

    :try_start_1
    move-object/from16 v0, v20

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v18
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    if-nez v18, :cond_3

    .line 208
    invoke-virtual {v14, v15}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    :cond_3
    move-object/from16 v0, p1

    .line 212
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v24

    sget v12, Landroid/support/v7/appcompat/R$layout;->abc_action_bar_home:I

    const/16 v7, 0xe

    invoke-virtual {v13, v7, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    const/4 v7, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v12, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v25

    move-object/from16 v27, v25

    check-cast v27, Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    move-object/from16 v26, v27

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    const/4 v7, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v12, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v25

    move-object/from16 v28, v25

    check-cast v28, Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    move-object/from16 v26, v28

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    move-object/from16 v26, v0

    const/4 v7, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setUp(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    move-object/from16 v29, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    sget v12, Landroid/support/v7/appcompat/R$string;->abc_action_bar_up_description:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v7, 0x5

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleStyleRes:I

    const/4 v7, 0x6

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    const/16 v7, 0xf

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressStyle:I

    const/16 v7, 0x10

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Landroid/support/v7/internal/widget/ActionBarView;->mIndeterminateProgressStyle:I

    const/16 v7, 0x11

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressBarPadding:I

    const/16 v7, 0x12

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Landroid/support/v7/internal/widget/ActionBarView;->mItemPadding:I

    const/4 v7, 0x3

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/support/v7/internal/widget/ActionBarView;->setDisplayOptions(I)V

    const/16 v7, 0xd

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    if-eqz v12, :cond_4

    const/4 v7, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v12, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput v7, v0, Landroid/support/v7/internal/widget/ActionBarView;->mNavigationMode:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I

    or-int/lit8 v12, v12, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/support/v7/internal/widget/ActionBarView;->setDisplayOptions(I)V

    :cond_4
    const/4 v7, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v7, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Landroid/support/v7/internal/widget/AbsActionBarView;->mContentHeight:I

    .line 246
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 247
    new-instance v31, Landroid/support/v7/internal/view/menu/ActionMenuItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    const/4 v7, 0x0

    const v16, 0x102002c

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    move v2, v7

    move/from16 v3, v16

    move/from16 v4, v32

    move/from16 v5, v33

    move-object/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/internal/widget/ActionBarView;->mLogoNavItem:Landroid/support/v7/internal/view/menu/ActionMenuItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v29, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    move-object/from16 v26, v0

    const/4 v7, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    move-object/from16 v26, v0

    const/4 v7, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setFocusable(Z)V

    .line 252
    return-void

    .line 187
    :catch_0
    move-exception v34

    const-string v35, "ActionBarView"

    const-string v36, "Activity component name not found!"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 203
    :catch_1
    move-exception v37

    const-string v35, "ActionBarView"

    const-string v36, "Activity component name not found!"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method static synthetic access$000(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/app/ActionBar$OnNavigationListener;
    .locals 1

    .line 63
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mCallback:Landroid/support/v7/app/ActionBar$OnNavigationListener;

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
    .locals 1

    .line 63
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedMenuPresenter:Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/SpinnerICS;
    .locals 1

    .line 63
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSpinner:Landroid/support/v7/internal/widget/SpinnerICS;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/view/View;
    .locals 1

    .line 63
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/support/v7/internal/widget/ActionBarView;)I
    .locals 1

    .line 63
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I

    return v0
.end method

.method static synthetic access$1300(Landroid/support/v7/internal/widget/ActionBarView;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarView;->initTitle()V

    return-void
.end method

.method static synthetic access$1400(Landroid/support/v7/internal/widget/ActionBarView;)I
    .locals 1

    .line 63
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mNavigationMode:I

    return v0
.end method

.method static synthetic access$200(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/view/menu/ActionMenuItem;
    .locals 1

    .line 63
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mLogoNavItem:Landroid/support/v7/internal/view/menu/ActionMenuItem;

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 63
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$600(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ActionBarView$HomeView;
    .locals 1

    .line 63
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    return-object v0
.end method

.method static synthetic access$700(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ActionBarView$HomeView;
    .locals 1

    .line 63
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    return-object v0
.end method

.method static synthetic access$800(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;
    .locals 1

    .line 63
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$900(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ScrollingTabContainerView;
    .locals 1

    .line 63
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    return-object v0
.end method

.method private configPresenters(Landroid/support/v7/internal/view/menu/MenuBuilder;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 463
    iget-object v0, p0, Landroid/support/v7/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p1, v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/internal/view/menu/MenuPresenter;)V

    .line 464
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedMenuPresenter:Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {p1, v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/internal/view/menu/MenuPresenter;)V

    .line 471
    :goto_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    .line 471
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->updateMenuView(Z)V

    .line 472
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedMenuPresenter:Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    .line 472
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    .line 473
    return-void

    .line 466
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;)V

    .line 467
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedMenuPresenter:Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;)V

    goto :goto_0
.end method

.method private initTitle()V
    .locals 17

    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 765
    iget-object v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    .line 766
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 767
    sget v5, Landroid/support/v7/appcompat/R$layout;->abc_action_bar_title_item:I

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v4, v5, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Landroid/widget/LinearLayout;

    move-object v2, v8

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    .line 769
    iget-object v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    sget v5, Landroid/support/v7/appcompat/R$id;->action_bar_title:I

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Landroid/widget/TextView;

    move-object v9, v10

    move-object/from16 v0, p0

    iput-object v9, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    .line 770
    iget-object v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    sget v5, Landroid/support/v7/appcompat/R$id;->action_bar_subtitle:I

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Landroid/widget/TextView;

    move-object v9, v11

    move-object/from16 v0, p0

    iput-object v9, v0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    .line 771
    iget-object v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    sget v5, Landroid/support/v7/appcompat/R$id;->up:I

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    move-object/from16 v0, p0

    .line 773
    iget-object v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/v7/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    .line 775
    iget v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleStyleRes:I

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    .line 776
    iget-object v9, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleStyleRes:I

    invoke-virtual {v9, v3, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    move-object/from16 v0, p0

    .line 778
    iget-object v13, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    .line 779
    iget-object v9, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    move-object/from16 v0, p0

    .line 782
    iget v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    .line 783
    iget-object v9, v0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    invoke-virtual {v9, v3, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_2
    move-object/from16 v0, p0

    .line 785
    iget-object v13, v0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    .line 786
    iget-object v9, v0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    .line 787
    iget-object v9, v0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    const/4 v7, 0x0

    move v5, v7

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    move-object/from16 v0, p0

    .line 790
    iget v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_7

    const/4 v14, 0x1

    :goto_0
    move-object/from16 v0, p0

    .line 791
    iget v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_8

    const/4 v15, 0x1

    :goto_1
    move-object/from16 v0, p0

    .line 792
    iget-object v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-nez v15, :cond_a

    if-eqz v14, :cond_9

    const/4 v7, 0x0

    move v5, v7

    :goto_2
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    .line 793
    iget-object v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v14, :cond_b

    if-nez v15, :cond_b

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :cond_4
    move-object/from16 v0, p0

    .line 796
    iget-object v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    .line 797
    iget-object v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v6, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_6

    :cond_5
    move-object/from16 v0, p0

    .line 800
    iget-object v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 800
    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 802
    :cond_6
    return-void

    :cond_7
    const/4 v14, 0x0

    .line 790
    goto :goto_0

    :cond_8
    const/4 v15, 0x0

    .line 791
    goto :goto_1

    .line 792
    :cond_9
    const/4 v5, 0x4

    goto :goto_2

    :cond_a
    const/16 v5, 0x8

    goto :goto_2

    :cond_b
    const/4 v1, 0x0

    .line 793
    goto :goto_3
.end method

.method private setTitleImpl(Ljava/lang/CharSequence;)V
    .locals 9

    const/4 v0, 0x0

    .line 527
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 528
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 529
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v2, :cond_3

    iget v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_0
    const/4 v6, 0x1

    .line 533
    :goto_0
    iget-object v7, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_4

    :goto_1
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 535
    :cond_1
    iget-object v8, p0, Landroid/support/v7/internal/widget/ActionBarView;->mLogoNavItem:Landroid/support/v7/internal/view/menu/ActionMenuItem;

    if-eqz v8, :cond_2

    .line 536
    iget-object v8, p0, Landroid/support/v7/internal/widget/ActionBarView;->mLogoNavItem:Landroid/support/v7/internal/view/menu/ActionMenuItem;

    invoke-virtual {v8, p1}, Landroid/support/v7/internal/view/menu/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 538
    :cond_2
    return-void

    :cond_3
    const/4 v6, 0x0

    .line 530
    goto :goto_0

    .line 533
    :cond_4
    const/16 v0, 0x8

    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic animateToVisibility(I)V
    .locals 0

    .line 63
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsActionBarView;->animateToVisibility(I)V

    return-void
.end method

.method public collapseActionView()V
    .locals 2

    .line 481
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedMenuPresenter:Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    .line 484
    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 486
    :cond_0
    return-void

    .line 481
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedMenuPresenter:Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    goto :goto_0
.end method

.method public bridge synthetic dismissPopupMenus()V
    .locals 0

    .line 63
    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsActionBarView;->dismissPopupMenus()V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 744
    new-instance v0, Landroid/support/v7/app/ActionBar$LayoutParams;

    .line 744
    const/16 v1, 0x13

    invoke-direct {v0, v1}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(I)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1159
    new-instance v0, Landroid/support/v7/app/ActionBar$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    if-nez p1, :cond_0

    .line 1165
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 1167
    :cond_0
    return-object p1
.end method

.method public bridge synthetic getAnimatedVisibility()I
    .locals 1

    .line 63
    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsActionBarView;->getAnimatedVisibility()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getContentHeight()I
    .locals 1

    .line 63
    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsActionBarView;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getCustomNavigationView()Landroid/view/View;
    .locals 1

    .line 729
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .line 737
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I

    return v0
.end method

.method public getDropdownAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    .line 717
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method public getDropdownSelectedPosition()I
    .locals 2

    .line 725
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSpinner:Landroid/support/v7/internal/widget/SpinnerICS;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/SpinnerICS;->getSelectedItemPosition()I

    move-result v1

    return v1
.end method

.method public getNavigationMode()I
    .locals 1

    .line 733
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mNavigationMode:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 541
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 500
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasEmbeddedTabs()Z
    .locals 1

    .line 373
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIncludeTabs:Z

    return v0
.end method

.method public hasExpandedActionView()Z
    .locals 3

    .line 476
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedMenuPresenter:Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedMenuPresenter:Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public bridge synthetic hideOverflowMenu()Z
    .locals 1

    .line 63
    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsActionBarView;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public initIndeterminateProgress()V
    .locals 5

    .line 320
    new-instance v0, Landroid/support/v7/internal/widget/ProgressBarICS;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    iget v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIndeterminateProgressStyle:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v4, v2}, Landroid/support/v7/internal/widget/ProgressBarICS;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    .line 322
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    sget v2, Landroid/support/v7/appcompat/R$id;->progress_circular:I

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ProgressBarICS;->setId(I)V

    .line 323
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    .line 323
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/support/v7/internal/widget/ProgressBarICS;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 325
    return-void
.end method

.method public initProgress()V
    .locals 5

    .line 312
    new-instance v0, Landroid/support/v7/internal/widget/ProgressBarICS;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    iget v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressStyle:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v4, v2}, Landroid/support/v7/internal/widget/ProgressBarICS;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    .line 313
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    sget v2, Landroid/support/v7/appcompat/R$id;->progress_horizontal:I

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ProgressBarICS;->setId(I)V

    .line 314
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    .line 314
    const/16 v4, 0x2710

    invoke-virtual {v0, v4}, Landroid/support/v7/internal/widget/ProgressBarICS;->setMax(I)V

    .line 315
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    .line 315
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/support/v7/internal/widget/ProgressBarICS;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 317
    return-void
.end method

.method public isCollapsed()Z
    .locals 1

    .line 813
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIsCollapsed:Z

    return v0
.end method

.method public bridge synthetic isOverflowMenuShowing()Z
    .locals 1

    .line 63
    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsActionBarView;->isOverflowMenuShowing()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isOverflowReserved()Z
    .locals 1

    .line 63
    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsActionBarView;->isOverflowReserved()Z

    move-result v0

    return v0
.end method

.method public isSplitActionBar()Z
    .locals 1

    .line 369
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9

    .line 256
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsActionBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 258
    const/4 v0, 0x0

    .line 258
    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 259
    const/4 v0, 0x0

    .line 259
    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 260
    const/4 v0, 0x0

    .line 260
    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 261
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p0, :cond_0

    .line 262
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 264
    :cond_0
    const/4 v0, 0x0

    .line 264
    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 265
    iget v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_1

    .line 266
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarView;->initTitle()V

    .line 269
    :cond_1
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    if-eqz v4, :cond_3

    iget-boolean v5, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v5, :cond_3

    .line 270
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v4}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-eqz v6, :cond_2

    const/4 v7, -0x2

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v7, -0x1

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 275
    :cond_2
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    .line 275
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 278
    :cond_3
    iget-object v8, p0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    if-eqz v8, :cond_4

    .line 279
    iget-object v8, p0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    invoke-virtual {p0, v8}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 280
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->initProgress()V

    .line 282
    :cond_4
    iget-object v8, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    if-eqz v8, :cond_5

    .line 283
    iget-object v8, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    invoke-virtual {p0, v8}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 284
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->initIndeterminateProgress()V

    .line 286
    :cond_5
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 299
    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsActionBarView;->onDetachedFromWindow()V

    .line 300
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 301
    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    if-eqz v1, :cond_0

    .line 302
    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 303
    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->hideSubMenus()Z

    .line 305
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    .line 749
    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsActionBarView;->onFinishInflate()V

    .line 751
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 753
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1

    .line 754
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eq v3, p0, :cond_1

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 757
    move-object v6, v3

    .line 757
    check-cast v6, Landroid/view/ViewGroup;

    .line 757
    move-object v5, v6

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 759
    :cond_0
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 762
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 21

    move-object/from16 v0, p0

    .line 1015
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v3

    move-object/from16 v0, p0

    .line 1016
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v4

    .line 1017
    sub-int v5, p5, p3

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v6

    sub-int p3, v5, v6

    if-gtz p3, :cond_1

    .line 1155
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v7, :cond_c

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    .line 1025
    :goto_1
    invoke-virtual {v8}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v5

    .line 1025
    const/16 v9, 0x8

    if-eq v5, v9, :cond_2

    .line 1026
    invoke-virtual {v8}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->getLeftOffset()I

    move-result v6

    .line 1027
    add-int v5, v3, v6

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v8, v5, v4, v1}, Landroid/support/v7/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v5

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    :cond_2
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v7, :cond_4

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v10, :cond_d

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v5

    const/16 v9, 0x8

    if-eq v5, v9, :cond_d

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_d

    const/16 p1, 0x1

    :goto_2
    if-eqz p1, :cond_3

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v10, v3, v4, v1}, Landroid/support/v7/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v5

    add-int/2addr v3, v5

    :cond_3
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->mNavigationMode:I

    .line 1060
    sparse-switch v5, :sswitch_data_0

    goto :goto_3

    .line 1060
    :cond_4
    :goto_3
    :sswitch_0
    sub-int v5, p4, p2

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v6

    sub-int v6, v5, v6

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v7/internal/widget/AbsActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;

    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v7/internal/widget/AbsActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {v11}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    move-object/from16 v0, p0

    if-ne v12, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v7/internal/widget/AbsActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v11, v6, v4, v1}, Landroid/support/v7/internal/widget/ActionBarView;->positionChildInverse(Landroid/view/View;III)I

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v7/internal/widget/AbsActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {v11}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v6, v5

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    invoke-virtual {v13}, Landroid/support/v7/internal/widget/ProgressBarICS;->getVisibility()I

    move-result v5

    const/16 v9, 0x8

    if-eq v5, v9, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v13, v6, v4, v1}, Landroid/support/v7/internal/widget/ActionBarView;->positionChildInverse(Landroid/view/View;III)I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    invoke-virtual {v13}, Landroid/support/v7/internal/widget/ProgressBarICS;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v6, v4

    .line 1072
    :cond_6
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v14, :cond_10

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    :cond_7
    :goto_4
    if-eqz v7, :cond_b

    .line 1080
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    instance-of v0, v15, Landroid/support/v7/app/ActionBar$LayoutParams;

    move/from16 p1, v0

    if-eqz p1, :cond_11

    move-object/from16 v17, v15

    check-cast v17, Landroid/support/v7/app/ActionBar$LayoutParams;

    move-object/from16 v16, v17

    :goto_5
    if-eqz v16, :cond_12

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v7/app/ActionBar$LayoutParams;->gravity:I

    move/from16 p3, v0

    .line 1085
    :goto_6
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 1087
    const/4 v4, 0x0

    const/16 p5, 0x0

    if-eqz v16, :cond_8

    move-object/from16 v0, v16

    .line 1090
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    move-object/from16 v0, v16

    .line 1091
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v6, v4

    move-object/from16 v0, v16

    .line 1092
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move-object/from16 v0, v16

    .line 1093
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 p5, v0

    .line 1096
    :cond_8
    and-int/lit8 p2, p3, 0x7

    .line 1096
    const/4 v9, 0x1

    move/from16 v0, p2

    if-ne v0, v9, :cond_14

    move-object/from16 v0, p0

    .line 1099
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getWidth()I

    move-result p4

    sub-int p4, p4, v5

    div-int/lit8 p4, p4, 0x2

    move/from16 v0, p4

    if-ge v0, v3, :cond_13

    const/16 p2, 0x3

    :cond_9
    :goto_7
    const/16 p4, 0x0

    .line 1122
    sparse-switch p2, :sswitch_data_1

    goto :goto_8

    .line 1122
    :goto_8
    :sswitch_1
    and-int/lit8 v5, p3, 0x70

    .line 1122
    const/4 v9, -0x1

    move/from16 v0, p3

    if-ne v0, v9, :cond_a

    .line 1125
    const/16 v5, 0x10

    .line 1128
    :cond_a
    const/4 v3, 0x0

    .line 1143
    sparse-switch v5, :sswitch_data_2

    goto :goto_9

    .line 1143
    :goto_9
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v3

    .line 1144
    add-int v18, p4, p5

    move/from16 v0, p4

    move/from16 v1, v18

    invoke-virtual {v7, v0, v3, v1, v4}, Landroid/view/View;->layout(IIII)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    invoke-virtual {v13}, Landroid/support/v7/internal/widget/ProgressBarICS;->bringToFront()V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    invoke-virtual {v13}, Landroid/support/v7/internal/widget/ProgressBarICS;->getMeasuredHeight()I

    move-result v18

    div-int/lit8 p5, v18, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressBarPadding:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressBarPadding:I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    invoke-virtual {v13}, Landroid/support/v7/internal/widget/ProgressBarICS;->getMeasuredWidth()I

    move-result v5

    move/from16 v0, p5

    neg-int v3, v0

    add-int/2addr v4, v5

    move-object/from16 v0, v19

    move/from16 v1, v18

    move/from16 v2, p5

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/support/v7/internal/widget/ProgressBarICS;->layout(IIII)V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    goto/16 :goto_1

    :cond_d
    const/16 p1, 0x0

    goto/16 :goto_2

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v7/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v10, :cond_4

    if-eqz p1, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v18, v0

    add-int v3, v3, v18

    :cond_e
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v7/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v10, v3, v4, v1}, Landroid/support/v7/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v18

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->mItemPadding:I

    add-int v18, v18, v5

    add-int v3, v3, v18

    goto/16 :goto_3

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    if-eqz p1, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v18, v0

    add-int v3, v3, v18

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, p3

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/support/v7/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v18

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->mItemPadding:I

    add-int v18, v18, v5

    add-int v3, v3, v18

    goto/16 :goto_3

    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x10

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    goto/16 :goto_4

    :cond_11
    const/16 v16, 0x0

    goto/16 :goto_5

    .line 1084
    :cond_12
    const/16 p3, 0x13

    goto/16 :goto_6

    .line 1102
    :cond_13
    add-int v18, p4, v5

    move/from16 v0, v18

    if-le v0, v6, :cond_9

    const/16 p2, 0x5

    goto/16 :goto_7

    .line 1103
    :cond_14
    const/4 v9, -0x1

    move/from16 v0, p3

    if-ne v0, v9, :cond_9

    const/16 p2, 0x3

    goto/16 :goto_7

    :sswitch_4
    move-object/from16 v0, p0

    .line 1112
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getWidth()I

    move-result v18

    sub-int v18, v18, v5

    div-int/lit8 p4, v18, 0x2

    goto/16 :goto_8

    :sswitch_5
    move/from16 p4, v3

    goto/16 :goto_8

    .line 1118
    :sswitch_6
    sub-int p4, v6, v5

    goto/16 :goto_8

    :sswitch_7
    move-object/from16 v0, p0

    .line 1131
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v6

    move-object/from16 v0, p0

    .line 1132
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getHeight()I

    move-result v18

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v3

    sub-int v5, v18, v3

    .line 1133
    sub-int v18, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v18, v18, v3

    div-int/lit8 v3, v18, 0x2

    goto/16 :goto_9

    :sswitch_8
    move-object/from16 v0, p0

    .line 1136
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v18

    add-int v3, v18, v4

    goto/16 :goto_9

    :sswitch_9
    move-object/from16 v0, p0

    .line 1139
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getHeight()I

    move-result v18

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v3

    sub-int v18, v18, v3

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v18, v18, v3

    sub-int v3, v18, p5

    goto/16 :goto_9

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_1
        0x3 -> :sswitch_5
        0x4 -> :sswitch_1
        0x5 -> :sswitch_6
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x10 -> :sswitch_7
        0x30 -> :sswitch_8
        0x50 -> :sswitch_9
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 38

    move-object/from16 v0, p0

    .line 818
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getChildCount()I

    move-result v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->mIsCollapsable:Z

    if-eqz v5, :cond_4

    .line 820
    const/4 v6, 0x0

    .line 821
    const/4 v7, 0x0

    :goto_0
    if-ge v7, v4, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/support/v7/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 823
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    .line 823
    const/16 v10, 0x8

    if-eq v9, v10, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v7/internal/widget/AbsActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;

    if-ne v8, v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v7/internal/widget/AbsActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {v11}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v12

    if-eqz v12, :cond_1

    .line 825
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 821
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    if-nez v6, :cond_4

    .line 821
    const/4 v10, 0x0

    .line 821
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v13}, Landroid/support/v7/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Landroid/support/v7/internal/widget/ActionBarView;->mIsCollapsed:Z

    .line 1011
    :cond_3
    :goto_1
    return-void

    :cond_4
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Landroid/support/v7/internal/widget/ActionBarView;->mIsCollapsed:Z

    move/from16 v0, p1

    .line 838
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 838
    const v10, 0x40000000    # 2.0f

    if-eq v6, v10, :cond_5

    .line 840
    new-instance v14, Ljava/lang/IllegalStateException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, " can only be used "

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, "with android:layout_width=\"MATCH_PARENT\" (or fill_parent)"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_5
    move/from16 v0, p2

    .line 844
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 844
    const v10, -0x80000000

    if-eq v12, v10, :cond_6

    .line 846
    new-instance v14, Ljava/lang/IllegalStateException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, " can only be used "

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, "with android:layout_height=\"wrap_content\""

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_6
    move/from16 v0, p1

    .line 850
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/internal/widget/AbsActionBarView;->mContentHeight:I

    if-lez v6, :cond_12

    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v7/internal/widget/AbsActionBarView;->mContentHeight:I

    :goto_2
    move-object/from16 v0, p0

    .line 855
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v12

    add-int/2addr v6, v12

    move-object/from16 v0, p0

    .line 856
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v19

    move-object/from16 v0, p0

    .line 857
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v7

    .line 858
    sub-int v20, v9, v6

    const v10, -0x80000000

    move/from16 v0, v20

    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    .line 861
    sub-int v12, p1, v19

    sub-int p2, v12, v7

    .line 862
    div-int/lit8 v19, p2, 0x2

    .line 863
    move/from16 v12, v19

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v8, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    move-object/from16 v22, v0

    :goto_3
    move-object/from16 v0, v22

    .line 867
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v7

    .line 867
    const/16 v10, 0x8

    if-eq v7, v10, :cond_7

    move-object/from16 v0, v22

    .line 868
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v19, v0

    if-gez v19, :cond_14

    const v10, -0x80000000

    move/from16 v0, p2

    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    :goto_4
    const v10, 0x40000000    # 2.0f

    move/from16 v0, v20

    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->measure(II)V

    move-object/from16 v0, v22

    .line 877
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->getMeasuredWidth()I

    move-result v19

    move-object/from16 v0, v22

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->getLeftOffset()I

    move-result v7

    add-int v24, v19, v7

    sub-int v7, p2, v24

    const/4 v10, 0x0

    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result p2

    sub-int v7, p2, v24

    const/4 v10, 0x0

    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v19

    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v7/internal/widget/AbsActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;

    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v7/internal/widget/AbsActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {v11}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v7/internal/widget/AbsActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v21

    invoke-virtual {v0, v11, v1, v2, v10}, Landroid/support/v7/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result p2

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v7/internal/widget/AbsActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {v11}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getMeasuredWidth()I

    move-result v24

    sub-int v12, v12, v24

    const/4 v10, 0x0

    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    move-object/from16 v26, v0

    if-eqz v26, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getVisibility()I

    move-result v7

    const/16 v10, 0x8

    if-eq v7, v10, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    move-object/from16 v26, v0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, p2

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v10}, Landroid/support/v7/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result p2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getMeasuredWidth()I

    move-result v24

    sub-int v12, v12, v24

    const/4 v10, 0x0

    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    if-eqz v27, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v7

    const/16 v10, 0x8

    if-eq v7, v10, :cond_15

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_15

    const/4 v5, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v8, :cond_a

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/internal/widget/ActionBarView;->mNavigationMode:I

    .line 930
    sparse-switch v7, :sswitch_data_0

    goto :goto_6

    .line 930
    :cond_a
    :goto_6
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v28, v0

    if-eqz v28, :cond_18

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    :cond_b
    :goto_7
    if-eqz v8, :cond_f

    .line 939
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    move-object/from16 v0, v29

    instance-of v0, v0, Landroid/support/v7/app/ActionBar$LayoutParams;

    move/from16 v30, v0

    if-eqz v30, :cond_19

    move-object/from16 v32, v29

    check-cast v32, Landroid/support/v7/app/ActionBar$LayoutParams;

    move-object/from16 v31, v32

    .line 943
    :goto_8
    const/4 v7, 0x0

    const/16 v24, 0x0

    if-eqz v31, :cond_c

    move-object/from16 v0, v31

    .line 946
    iget v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v24, v0

    add-int v7, v7, v24

    move-object/from16 v0, v31

    .line 947
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v24, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v33, v0

    add-int v24, v24, v33

    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/widget/AbsActionBarView;->mContentHeight:I

    move/from16 v33, v0

    if-gtz v33, :cond_1a

    .line 954
    const v34, -0x80000000

    :goto_9
    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v21, v0

    if-ltz v21, :cond_d

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v20

    :cond_d
    sub-int v24, v20, v24

    const/4 v10, 0x0

    move/from16 v0, v24

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v21

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v24, v0

    const/4 v10, -0x2

    move/from16 v0, v24

    if-eq v0, v10, :cond_1c

    const v20, 0x40000000    # 2.0f

    :goto_a
    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v33, v0

    if-ltz v33, :cond_1d

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v33, v0

    move/from16 v0, v33

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v33

    :goto_b
    sub-int v33, v33, v7

    const/4 v10, 0x0

    move/from16 v0, v33

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v33

    if-eqz v31, :cond_1e

    move-object/from16 v0, v31

    iget v0, v0, Landroid/support/v7/app/ActionBar$LayoutParams;->gravity:I

    move/from16 v24, v0

    :goto_c
    and-int/lit8 v24, v24, 0x7

    const/4 v10, 0x1

    move/from16 v0, v24

    if-ne v0, v10, :cond_e

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v35, v0

    const/4 v10, -0x1

    move/from16 v0, v35

    if-ne v0, v10, :cond_e

    move/from16 v0, v19

    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    move-result v35

    mul-int/lit8 v33, v35, 0x2

    :cond_e
    move/from16 v0, v33

    move/from16 v1, v20

    .line 976
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v35

    move/from16 v0, v21

    move/from16 v1, v34

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    move/from16 v0, v35

    invoke-virtual {v8, v0, v12}, Landroid/view/View;->measure(II)V

    .line 979
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v35

    add-int v35, v35, v7

    sub-int p2, p2, v35

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v28, v0

    if-nez v28, :cond_10

    if-eqz v5, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/widget/AbsActionBarView;->mContentHeight:I

    move/from16 v35, v0

    const v10, 0x40000000    # 2.0f

    move/from16 v0, v35

    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v35

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, p2

    move/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3, v10}, Landroid/support/v7/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v12

    sub-int v12, v19, v12

    const/4 v10, 0x0

    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/widget/AbsActionBarView;->mContentHeight:I

    move/from16 v35, v0

    if-gtz v35, :cond_21

    .line 989
    const/4 v9, 0x0

    const/16 v35, 0x0

    :goto_d
    move/from16 v0, v35

    if-ge v0, v4, :cond_1f

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 992
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int v19, v12, v6

    move/from16 v0, v19

    if-le v0, v9, :cond_11

    .line 994
    move/from16 v9, v19

    .line 990
    :cond_11
    add-int/lit8 v35, v35, 0x1

    goto :goto_d

    :cond_12
    move/from16 v0, p2

    .line 852
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    goto/16 :goto_2

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    move-object/from16 v22, v0

    goto/16 :goto_3

    :cond_14
    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v35, v0

    const v10, 0x40000000    # 2.0f

    move/from16 v0, v35

    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    goto/16 :goto_4

    .line 896
    :cond_15
    const/4 v5, 0x0

    goto/16 :goto_5

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    if-eqz v27, :cond_a

    if-eqz v5, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v35, v0

    mul-int/lit8 v7, v35, 0x2

    :goto_e
    sub-int v24, p2, v7

    const/4 v10, 0x0

    move/from16 v0, v24

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v35

    sub-int v19, v19, v7

    const/4 v10, 0x0

    move/from16 v0, v19

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    const v10, -0x80000000

    move/from16 v0, v35

    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    const v10, 0x40000000    # 2.0f

    move/from16 v0, v20

    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    move-object/from16 v0, v27

    move/from16 v1, v19

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->measure(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v19

    sub-int v35, v35, v19

    const/4 v10, 0x0

    move/from16 v0, v35

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    sub-int v19, v7, v19

    const/4 v10, 0x0

    move/from16 v0, v19

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v19

    goto/16 :goto_6

    :cond_16
    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/internal/widget/ActionBarView;->mItemPadding:I

    goto :goto_e

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    move-object/from16 v36, v0

    if-eqz v36, :cond_a

    if-eqz v5, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v35, v0

    mul-int/lit8 v35, v35, 0x2

    :goto_f
    sub-int v24, p2, v35

    const/4 v10, 0x0

    move/from16 v0, v24

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    sub-int v35, v19, v35

    const/4 v10, 0x0

    move/from16 v0, v35

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v35

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    move-object/from16 v36, v0

    const v10, -0x80000000

    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    const v10, 0x40000000    # 2.0f

    move/from16 v0, v20

    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    move-object/from16 v0, v36

    move/from16 v1, v19

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->measure(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v19

    sub-int v7, v7, v19

    const/4 v10, 0x0

    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result p2

    sub-int v35, v35, v19

    const/4 v10, 0x0

    move/from16 v0, v35

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v19

    goto/16 :goto_6

    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v35, v0

    goto :goto_f

    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I

    move/from16 v35, v0

    and-int/lit8 v35, v35, 0x10

    if-eqz v35, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    move-object/from16 v28, v0

    if-eqz v28, :cond_b

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    goto/16 :goto_7

    :cond_19
    const/16 v31, 0x0

    goto/16 :goto_8

    :cond_1a
    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v35, v0

    const/4 v10, -0x2

    move/from16 v0, v35

    if-eq v0, v10, :cond_1b

    const v34, 0x40000000    # 2.0f

    :goto_10
    goto/16 :goto_9

    :cond_1b
    const v34, -0x80000000

    goto :goto_10

    .line 962
    :cond_1c
    const v20, -0x80000000

    goto/16 :goto_a

    :cond_1d
    move/from16 v33, p2

    goto/16 :goto_b

    .line 967
    :cond_1e
    const/16 v24, 0x13

    goto/16 :goto_c

    :cond_1f
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Landroid/support/v7/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mContextView:Landroid/support/v7/internal/widget/ActionBarContextView;

    move-object/from16 v37, v0

    if-eqz v37, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mContextView:Landroid/support/v7/internal/widget/ActionBarContextView;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v35

    move-object/from16 v0, v37

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setContentHeight(I)V

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    move-object/from16 v26, v0

    if-eqz v26, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getVisibility()I

    move-result v35

    const/16 v10, 0x8

    move/from16 v0, v35

    if-eq v0, v10, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressBarPadding:I

    move/from16 v35, v0

    mul-int/lit8 v35, v35, 0x2

    sub-int v35, p1, v35

    const v10, 0x40000000    # 2.0f

    move/from16 v0, v35

    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v35

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v12

    const v10, -0x80000000

    invoke-static {v12, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    move-object/from16 v0, v26

    move/from16 v1, v35

    invoke-virtual {v0, v1, v6}, Landroid/support/v7/internal/widget/ProgressBarICS;->measure(II)V

    goto/16 :goto_1

    :cond_21
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Landroid/support/v7/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    goto :goto_11

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
    .end sparse-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 9

    move-object v1, p1

    check-cast v1, Landroid/support/v7/internal/widget/ActionBarView$SavedState;

    move-object v0, v1

    .line 1188
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsActionBarView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1190
    iget v2, v0, Landroid/support/v7/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    if-eqz v2, :cond_0

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedMenuPresenter:Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v3, :cond_0

    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mOptionsMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz v4, :cond_0

    .line 1192
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mOptionsMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    iget v2, v0, Landroid/support/v7/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    invoke-virtual {v4, v2}, Landroid/support/v7/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Landroid/support/v4/internal/view/SupportMenuItem;

    move-object v6, v7

    if-eqz v6, :cond_0

    .line 1195
    invoke-interface {v6}, Landroid/support/v4/internal/view/SupportMenuItem;->expandActionView()Z

    .line 1199
    :cond_0
    iget-boolean v8, v0, Landroid/support/v7/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    if-eqz v8, :cond_1

    .line 1200
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->postShowOverflowMenu()V

    .line 1202
    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .line 1172
    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsActionBarView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1173
    new-instance v1, Landroid/support/v7/internal/widget/ActionBarView$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v7/internal/widget/ActionBarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1175
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedMenuPresenter:Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedMenuPresenter:Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v3, v2, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    if-eqz v3, :cond_0

    .line 1176
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedMenuPresenter:Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v3, v2, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v4

    iput v4, v1, Landroid/support/v7/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    .line 1179
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result v5

    iput-boolean v5, v1, Landroid/support/v7/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    .line 1181
    return-object v1
.end method

.method public bridge synthetic postShowOverflowMenu()V
    .locals 0

    .line 63
    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsActionBarView;->postShowOverflowMenu()V

    return-void
.end method

.method public setCallback(Landroid/support/v7/app/ActionBar$OnNavigationListener;)V
    .locals 0

    .line 392
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mCallback:Landroid/support/v7/app/ActionBar$OnNavigationListener;

    .line 393
    return-void
.end method

.method public setCollapsable(Z)V
    .locals 0

    .line 809
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIsCollapsable:Z

    .line 810
    return-void
.end method

.method public bridge synthetic setContentHeight(I)V
    .locals 0

    .line 63
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsActionBarView;->setContentHeight(I)V

    return-void
.end method

.method public setContextView(Landroid/support/v7/internal/widget/ActionBarContextView;)V
    .locals 0

    .line 805
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mContextView:Landroid/support/v7/internal/widget/ActionBarContextView;

    .line 806
    return-void
.end method

.method public setCustomNavigationView(Landroid/view/View;)V
    .locals 3

    .line 489
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 490
    :goto_0
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 491
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 493
    :cond_0
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 494
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 495
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 497
    :cond_1
    return-void

    .line 489
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDisplayOptions(I)V
    .locals 17

    const/16 v2, 0x8

    const/4 v3, -0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    .line 572
    iget v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 572
    const/4 v6, -0x1

    if-ne v5, v6, :cond_6

    :goto_0
    move/from16 v0, p1

    move-object/from16 v1, p0

    .line 573
    iput v0, v1, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 575
    and-int/lit8 v5, v3, 0x1f

    if-eqz v5, :cond_11

    .line 576
    and-int/lit8 v5, p1, 0x2

    if-eqz v5, :cond_7

    const/4 v7, 0x1

    :goto_1
    if-eqz v7, :cond_8

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v8, :cond_8

    const/4 v6, 0x0

    move v5, v6

    :goto_2
    move-object/from16 v0, p0

    .line 578
    iget-object v9, v0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v9, v5}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    .line 580
    and-int/lit8 v5, v3, 0x4

    if-eqz v5, :cond_0

    .line 581
    and-int/lit8 v5, p1, 0x4

    if-eqz v5, :cond_9

    const/4 v10, 0x1

    :goto_3
    move-object/from16 v0, p0

    .line 582
    iget-object v9, v0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v9, v10}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setUp(Z)V

    if-eqz v10, :cond_0

    .line 582
    const/4 v6, 0x1

    move-object/from16 v0, p0

    .line 589
    invoke-virtual {v0, v6}, Landroid/support/v7/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    .line 593
    :cond_0
    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    .line 594
    iget-object v11, v0, Landroid/support/v7/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_a

    and-int/lit8 v5, p1, 0x1

    if-eqz v5, :cond_a

    const/4 v10, 0x1

    :goto_4
    move-object/from16 v0, p0

    .line 596
    iget-object v9, v0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    if-eqz v10, :cond_b

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v7/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    :goto_5
    invoke-virtual {v9, v11}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 599
    :cond_1
    and-int/lit8 v5, v3, 0x8

    if-eqz v5, :cond_2

    .line 600
    and-int/lit8 v5, p1, 0x8

    if-eqz v5, :cond_c

    move-object/from16 v0, p0

    .line 601
    invoke-direct {v0}, Landroid/support/v7/internal/widget/ActionBarView;->initTitle()V

    :cond_2
    :goto_6
    move-object/from16 v0, p0

    .line 607
    iget-object v12, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v12, :cond_4

    and-int/lit8 v5, v3, 0x6

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    .line 609
    iget v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_d

    const/4 v10, 0x1

    :goto_7
    move-object/from16 v0, p0

    .line 610
    iget-object v8, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-nez v7, :cond_3

    if-eqz v10, :cond_e

    const/4 v6, 0x0

    move v2, v6

    :cond_3
    :goto_8
    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    .line 611
    iget-object v12, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v7, :cond_f

    if-eqz v10, :cond_f

    :goto_9
    invoke-virtual {v12, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 614
    :cond_4
    and-int/lit8 v2, v3, 0x10

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v8, :cond_5

    .line 615
    and-int/lit8 v2, p1, 0x10

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    .line 616
    iget-object v8, v0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    :cond_5
    :goto_a
    move-object/from16 v0, p0

    .line 622
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->requestLayout()V

    :goto_b
    move-object/from16 v0, p0

    .line 628
    iget-object v9, v0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v9}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_12

    move-object/from16 v0, p0

    .line 629
    iget-object v9, v0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    .line 629
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 637
    :goto_c
    return-void

    :cond_6
    move-object/from16 v0, p0

    .line 572
    iget v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I

    xor-int v3, p1, v5

    goto/16 :goto_0

    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_8
    const/16 v5, 0x8

    goto/16 :goto_2

    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_3

    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p0

    .line 596
    iget-object v11, v0, Landroid/support/v7/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_5

    :cond_c
    move-object/from16 v0, p0

    .line 603
    iget-object v12, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_6

    :cond_d
    const/4 v10, 0x0

    .line 609
    goto :goto_7

    .line 610
    :cond_e
    const/4 v2, 0x4

    goto :goto_8

    :cond_f
    const/4 v4, 0x0

    .line 611
    goto :goto_9

    :cond_10
    move-object/from16 v0, p0

    .line 618
    iget-object v8, v0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_a

    :cond_11
    move-object/from16 v0, p0

    .line 624
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->invalidate()V

    goto :goto_b

    .line 630
    :cond_12
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    .line 631
    iget-object v9, v0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v2, Landroid/support/v7/appcompat/R$string;->abc_action_bar_up_description:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_c

    :cond_13
    move-object/from16 v0, p0

    .line 634
    iget-object v9, v0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v2, Landroid/support/v7/appcompat/R$string;->abc_action_bar_home_description:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_c
.end method

.method public setDropdownAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 1

    .line 710
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    .line 711
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSpinner:Landroid/support/v7/internal/widget/SpinnerICS;

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSpinner:Landroid/support/v7/internal/widget/SpinnerICS;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/SpinnerICS;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 714
    :cond_0
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .locals 1

    .line 721
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSpinner:Landroid/support/v7/internal/widget/SpinnerICS;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/SpinnerICS;->setSelection(I)V

    .line 722
    return-void
.end method

.method public setEmbeddedTabView(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V
    .locals 5

    .line 377
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 380
    :cond_0
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIncludeTabs:Z

    .line 382
    iget-boolean v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v1, :cond_1

    iget v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mNavigationMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 383
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 384
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const/4 v3, -0x2

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v3, -0x1

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, 0x1

    .line 387
    invoke-virtual {p1, v3}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 389
    :cond_1
    return-void

    .line 381
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 1

    .line 1209
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setUpIndicator(I)V

    .line 1210
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1205
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 1206
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 6

    .line 557
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setEnabled(Z)V

    .line 558
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setFocusable(Z)V

    if-nez p1, :cond_0

    .line 561
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    .line 561
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 569
    :goto_0
    return-void

    .line 562
    :cond_0
    iget v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    .line 563
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v2, Landroid/support/v7/appcompat/R$string;->abc_action_bar_up_description:I

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 566
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v2, Landroid/support/v7/appcompat/R$string;->abc_action_bar_home_description:I

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setIcon(I)V
    .locals 3

    .line 651
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/ActionBarView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 652
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .line 640
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 643
    :cond_0
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v2, p1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 645
    :cond_1
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 646
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    iget-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 648
    :cond_2
    return-void
.end method

.method public setLogo(I)V
    .locals 3

    .line 662
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/ActionBarView;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 663
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 655
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 657
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v1, p1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 659
    :cond_0
    return-void
.end method

.method public setMenu(Landroid/support/v4/internal/view/SupportMenu;Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;)V
    .locals 24

    move-object/from16 v0, p0

    .line 396
    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->mOptionsMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    move-object/from16 v0, p1

    if-ne v0, v1, :cond_0

    .line 459
    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    .line 400
    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->mOptionsMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    .line 401
    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->mOptionsMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/view/menu/MenuBuilder;->removeMenuPresenter(Landroid/support/v7/internal/view/menu/MenuPresenter;)V

    move-object/from16 v0, p0

    .line 402
    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->mOptionsMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedMenuPresenter:Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {v1, v3}, Landroid/support/v7/internal/view/menu/MenuBuilder;->removeMenuPresenter(Landroid/support/v7/internal/view/menu/MenuPresenter;)V

    :cond_1
    move-object/from16 v4, p1

    .line 405
    check-cast v4, Landroid/support/v7/internal/view/menu/MenuBuilder;

    .line 405
    move-object v1, v4

    move-object/from16 v0, p0

    .line 406
    iput-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->mOptionsMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    move-object/from16 v0, p0

    .line 407
    iget-object v5, v0, Landroid/support/v7/internal/widget/AbsActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    .line 408
    iget-object v5, v0, Landroid/support/v7/internal/widget/AbsActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {v5}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Landroid/view/ViewGroup;

    move-object v7, v8

    if-eqz v7, :cond_2

    move-object/from16 v0, p0

    .line 410
    iget-object v5, v0, Landroid/support/v7/internal/widget/AbsActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    move-object/from16 v0, p0

    .line 413
    iget-object v2, v0, Landroid/support/v7/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    if-nez v2, :cond_3

    .line 414
    new-instance v2, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v9}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/support/v7/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    move-object/from16 v0, p0

    .line 415
    iget-object v2, v0, Landroid/support/v7/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->setCallback(Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;)V

    move-object/from16 v0, p0

    .line 416
    iget-object v2, v0, Landroid/support/v7/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    sget v10, Landroid/support/v7/appcompat/R$id;->action_menu_presenter:I

    invoke-virtual {v2, v10}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->setId(I)V

    .line 417
    new-instance v3, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    .line 417
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v11}, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;-><init>(Landroid/support/v7/internal/widget/ActionBarView;Landroid/support/v7/internal/widget/ActionBarView$1;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedMenuPresenter:Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    .line 421
    :cond_3
    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    .line 421
    const/4 v13, -0x2

    .line 421
    const/4 v14, -0x1

    invoke-direct {v12, v13, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    .line 423
    iget-boolean v15, v0, Landroid/support/v7/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    if-nez v15, :cond_5

    move-object/from16 v0, p0

    .line 424
    iget-object v2, v0, Landroid/support/v7/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    sget v10, Landroid/support/v7/appcompat/R$bool;->abc_action_bar_expanded_action_views_exclusive:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    invoke-virtual {v2, v15}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    move-object/from16 v0, p0

    .line 427
    invoke-direct {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->configPresenters(Landroid/support/v7/internal/view/menu/MenuBuilder;)V

    move-object/from16 v0, p0

    .line 428
    iget-object v2, v0, Landroid/support/v7/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/MenuView;

    move-result-object v17

    move-object/from16 v18, v17

    check-cast v18, Landroid/support/v7/internal/view/menu/ActionMenuView;

    move-object/from16 v5, v18

    .line 429
    invoke-virtual {v5, v1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->initialize(Landroid/support/v7/internal/view/menu/MenuBuilder;)V

    .line 430
    invoke-virtual {v5}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    move-object/from16 v19, v6

    check-cast v19, Landroid/view/ViewGroup;

    move-object/from16 v7, v19

    if-eqz v7, :cond_4

    move-object/from16 v0, p0

    if-eq v7, v0, :cond_4

    .line 432
    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    move-object/from16 v0, p0

    .line 434
    invoke-virtual {v0, v5, v12}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    move-object/from16 v0, p0

    .line 458
    iput-object v5, v0, Landroid/support/v7/internal/widget/AbsActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    .line 436
    iget-object v2, v0, Landroid/support/v7/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    .line 436
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    move-object/from16 v0, p0

    .line 438
    iget-object v2, v0, Landroid/support/v7/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    move-object/from16 v0, v20

    iget v10, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v13, 0x1

    invoke-virtual {v2, v10, v13}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    move-object/from16 v0, p0

    .line 441
    iget-object v2, v0, Landroid/support/v7/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    .line 441
    const v13, 0x7fffffff

    invoke-virtual {v2, v13}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->setItemLimit(I)V

    .line 443
    const/4 v13, -0x1

    .line 443
    iput v13, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v0, p0

    .line 444
    invoke-direct {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->configPresenters(Landroid/support/v7/internal/view/menu/MenuBuilder;)V

    move-object/from16 v0, p0

    .line 445
    iget-object v2, v0, Landroid/support/v7/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/MenuView;

    move-result-object v17

    move-object/from16 v21, v17

    check-cast v21, Landroid/support/v7/internal/view/menu/ActionMenuView;

    move-object/from16 v5, v21

    move-object/from16 v0, p0

    .line 446
    iget-object v0, v0, Landroid/support/v7/internal/widget/AbsActionBarView;->mSplitView:Landroid/support/v7/internal/widget/ActionBarContainer;

    move-object/from16 v22, v0

    if-eqz v22, :cond_7

    .line 447
    invoke-virtual {v5}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    move-object/from16 v23, v6

    check-cast v23, Landroid/view/ViewGroup;

    move-object/from16 v7, v23

    if-eqz v7, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/AbsActionBarView;->mSplitView:Landroid/support/v7/internal/widget/ActionBarContainer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    if-eq v7, v0, :cond_6

    .line 449
    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_6
    move-object/from16 v0, p0

    .line 451
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getAnimatedVisibility()I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/support/v7/internal/view/menu/ActionMenuView;->setVisibility(I)V

    move-object/from16 v0, p0

    .line 452
    iget-object v0, v0, Landroid/support/v7/internal/widget/AbsActionBarView;->mSplitView:Landroid/support/v7/internal/widget/ActionBarContainer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v12}, Landroid/support/v7/internal/widget/ActionBarContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 455
    :cond_7
    invoke-virtual {v5, v12}, Landroid/support/v7/internal/view/menu/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1
.end method

.method public setNavigationMode(I)V
    .locals 18

    move-object/from16 v0, p0

    .line 666
    iget v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mNavigationMode:I

    move/from16 v0, p1

    if-eq v0, v2, :cond_2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 704
    :cond_0
    :goto_0
    sparse-switch p1, :sswitch_data_1

    goto :goto_1

    :cond_1
    :goto_1
    move/from16 v0, p1

    move-object/from16 v1, p0

    .line 704
    iput v0, v1, Landroid/support/v7/internal/widget/ActionBarView;->mNavigationMode:I

    move-object/from16 v0, p0

    .line 705
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->requestLayout()V

    .line 707
    :cond_2
    return-void

    :sswitch_0
    move-object/from16 v0, p0

    .line 670
    iget-object v3, v0, Landroid/support/v7/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    .line 671
    iget-object v3, v0, Landroid/support/v7/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_0

    :sswitch_1
    move-object/from16 v0, p0

    .line 675
    iget-object v4, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    .line 676
    iget-object v4, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_0

    :sswitch_2
    move-object/from16 v0, p0

    .line 682
    iget-object v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->mSpinner:Landroid/support/v7/internal/widget/SpinnerICS;

    if-nez v6, :cond_3

    .line 683
    new-instance v6, Landroid/support/v7/internal/widget/SpinnerICS;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    sget v2, Landroid/support/v7/appcompat/R$attr;->actionDropDownStyle:I

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8, v2}, Landroid/support/v7/internal/widget/SpinnerICS;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->mSpinner:Landroid/support/v7/internal/widget/SpinnerICS;

    move-object/from16 v0, p0

    .line 685
    iget-object v7, v0, Landroid/support/v7/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    sget v2, Landroid/support/v7/appcompat/R$layout;->abc_action_bar_view_list_nav_layout:I

    const/4 v8, 0x0

    invoke-virtual {v9, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Landroid/widget/LinearLayout;

    move-object v3, v11

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/support/v7/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    .line 687
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 687
    const/4 v13, -0x2

    .line 687
    const/4 v14, -0x1

    invoke-direct {v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v13, 0x11

    iput v13, v12, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move-object/from16 v0, p0

    .line 690
    iget-object v3, v0, Landroid/support/v7/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->mSpinner:Landroid/support/v7/internal/widget/SpinnerICS;

    invoke-virtual {v3, v6, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    move-object/from16 v0, p0

    .line 692
    iget-object v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->mSpinner:Landroid/support/v7/internal/widget/SpinnerICS;

    invoke-virtual {v6}, Landroid/support/v7/internal/widget/SpinnerICS;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_4

    move-object/from16 v0, p0

    .line 693
    iget-object v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->mSpinner:Landroid/support/v7/internal/widget/SpinnerICS;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/support/v7/internal/widget/SpinnerICS;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_4
    move-object/from16 v0, p0

    .line 695
    iget-object v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->mSpinner:Landroid/support/v7/internal/widget/SpinnerICS;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mNavItemSelectedListener:Landroid/support/v7/internal/widget/AdapterViewICS$OnItemSelectedListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/support/v7/internal/widget/SpinnerICS;->setOnItemSelectedListener(Landroid/support/v7/internal/widget/AdapterViewICS$OnItemSelectedListener;)V

    move-object/from16 v0, p0

    .line 696
    iget-object v3, v0, Landroid/support/v7/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    :sswitch_3
    move-object/from16 v0, p0

    .line 699
    iget-object v4, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    .line 700
    iget-object v4, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
    .end sparse-switch
.end method

.method public setSplitActionBar(Z)V
    .locals 14

    .line 329
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    if-eq v0, p1, :cond_5

    .line 330
    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;

    if-eqz v1, :cond_2

    .line 331
    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/view/ViewGroup;

    move-object v3, v4

    if-eqz v3, :cond_0

    .line 333
    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    if-eqz p1, :cond_6

    .line 336
    iget-object v5, p0, Landroid/support/v7/internal/widget/AbsActionBarView;->mSplitView:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v5, :cond_1

    .line 337
    iget-object v5, p0, Landroid/support/v7/internal/widget/AbsActionBarView;->mSplitView:Landroid/support/v7/internal/widget/ActionBarContainer;

    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {v5, v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->addView(Landroid/view/View;)V

    .line 339
    :cond_1
    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    const/4 v7, -0x1

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 344
    :goto_0
    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->requestLayout()V

    .line 346
    :cond_2
    iget-object v5, p0, Landroid/support/v7/internal/widget/AbsActionBarView;->mSplitView:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v5, :cond_3

    .line 347
    iget-object v5, p0, Landroid/support/v7/internal/widget/AbsActionBarView;->mSplitView:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz p1, :cond_7

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    invoke-virtual {v5, v8}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 350
    :cond_3
    iget-object v9, p0, Landroid/support/v7/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    if-eqz v9, :cond_4

    if-nez p1, :cond_8

    .line 352
    iget-object v9, p0, Landroid/support/v7/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v8, Landroid/support/v7/appcompat/R$bool;->abc_action_bar_expanded_action_views_exclusive:I

    invoke-virtual {v10, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    invoke-virtual {v9, v11}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 364
    :cond_4
    :goto_2
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsActionBarView;->setSplitActionBar(Z)V

    .line 366
    :cond_5
    return-void

    .line 341
    :cond_6
    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 342
    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    const/4 v7, -0x2

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 347
    :cond_7
    const/16 v8, 0x8

    goto :goto_1

    .line 356
    :cond_8
    iget-object v9, p0, Landroid/support/v7/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    .line 356
    const/4 v7, 0x0

    invoke-virtual {v9, v7}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 358
    iget-object v9, p0, Landroid/support/v7/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    iget v8, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v7, 0x1

    invoke-virtual {v9, v8, v7}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 361
    iget-object v9, p0, Landroid/support/v7/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    .line 361
    const v7, 0x7fffffff

    invoke-virtual {v9, v7}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->setItemLimit(I)V

    goto :goto_2
.end method

.method public bridge synthetic setSplitView(Landroid/support/v7/internal/widget/ActionBarContainer;)V
    .locals 0

    .line 63
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsActionBarView;->setSplitView(Landroid/support/v7/internal/widget/ActionBarContainer;)V

    return-void
.end method

.method public bridge synthetic setSplitWhenNarrow(Z)V
    .locals 0

    .line 63
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsActionBarView;->setSplitWhenNarrow(Z)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 7

    const/4 v0, 0x0

    .line 545
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 546
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 547
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 549
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v3, :cond_3

    iget v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_3

    iget-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_0
    const/4 v2, 0x1

    .line 552
    :goto_1
    iget-object v6, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_4

    :goto_2
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 554
    :cond_1
    return-void

    :cond_2
    const/16 v2, 0x8

    .line 548
    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 549
    goto :goto_1

    :cond_4
    const/16 v0, 0x8

    .line 552
    goto :goto_2
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mUserTitle:Z

    .line 511
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    .line 512
    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .locals 0

    .line 63
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsActionBarView;->setVisibility(I)V

    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0

    .line 294
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mWindowCallback:Landroid/view/Window$Callback;

    .line 295
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 521
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mUserTitle:Z

    if-nez v0, :cond_0

    .line 522
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    .line 524
    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic showOverflowMenu()Z
    .locals 1

    .line 63
    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsActionBarView;->showOverflowMenu()Z

    move-result v0

    return v0
.end method
