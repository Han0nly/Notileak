.class public Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
.super Landroid/support/v7/internal/view/menu/BaseMenuPresenter;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/support/v4/view/ActionProvider$SubUiVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/internal/view/menu/ActionMenuPresenter$1;,
        Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;,
        Landroid/support/v7/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;,
        Landroid/support/v7/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;,
        Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowPopup;,
        Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;,
        Landroid/support/v7/internal/view/menu/ActionMenuPresenter$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionMenuPresenter"


# instance fields
.field private final mActionButtonGroups:Landroid/util/SparseBooleanArray;

.field private mActionButtonPopup:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

.field private mActionItemWidthLimit:I

.field private mExpandedActionViewsExclusive:Z

.field private mMaxItems:I

.field private mMaxItemsSet:Z

.field private mMinCellSize:I

.field mOpenSubMenuId:I

.field private mOverflowButton:Landroid/view/View;

.field private mOverflowPopup:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowPopup;

.field final mPopupPresenterCallback:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;

.field private mPostedOpenRunnable:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

.field private mReserveOverflow:Z

.field private mReserveOverflowSet:Z

.field private mScrapActionButtonView:Landroid/view/View;

.field private mStrictWidthLimit:Z

.field private mWidthLimit:I

.field private mWidthLimitSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 76
    sget v0, Landroid/support/v7/appcompat/R$layout;->abc_action_menu_layout:I

    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_action_menu_item_layout:I

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;II)V

    .line 63
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 72
    new-instance v3, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;

    .line 72
    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;-><init>(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/support/v7/internal/view/menu/ActionMenuPresenter$1;)V

    iput-object v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mPopupPresenterCallback:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;

    .line 77
    return-void
.end method

.method static synthetic access$102(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowPopup;)Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowPopup;
    .locals 0

    .line 44
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mOverflowPopup:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    return-object p1
.end method

.method static synthetic access$202(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/support/v7/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;)Landroid/support/v7/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;
    .locals 0

    .line 44
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    return-object p1
.end method

.method static synthetic access$302(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;)Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;
    .locals 0

    .line 44
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    return-object p1
.end method

.method private findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 11

    .line 273
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    move-object v1, v2

    if-nez v1, :cond_1

    const/4 v3, 0x0

    .line 286
    :cond_0
    return-object v3

    .line 278
    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 279
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    .line 280
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v6, v3, Landroid/support/v7/internal/view/menu/MenuView$ItemView;

    if-eqz v6, :cond_2

    move-object v8, v3

    check-cast v8, Landroid/support/v7/internal/view/menu/MenuView$ItemView;

    move-object v7, v8

    invoke-interface {v7}, Landroid/support/v7/internal/view/menu/MenuView$ItemView;->getItemData()Landroid/support/v7/internal/view/menu/MenuItemImpl;

    move-result-object v9

    if-eq v9, p1, :cond_0

    .line 279
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 279
    :cond_3
    const/4 v10, 0x0

    return-object v10
.end method


# virtual methods
.method public bindItemView(Landroid/support/v7/internal/view/menu/MenuItemImpl;Landroid/support/v7/internal/view/menu/MenuView$ItemView;)V
    .locals 6

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/support/v7/internal/view/menu/MenuView$ItemView;->initialize(Landroid/support/v7/internal/view/menu/MenuItemImpl;I)V

    .line 179
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    move-object v3, v1

    check-cast v3, Landroid/support/v7/internal/view/menu/ActionMenuView;

    move-object v2, v3

    .line 180
    move-object v5, p2

    .line 180
    check-cast v5, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    .line 180
    move-object v4, v5

    .line 181
    invoke-virtual {v4, v2}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setItemInvoker(Landroid/support/v7/internal/view/menu/MenuBuilder$ItemInvoker;)V

    .line 182
    return-void
.end method

.method public dismissPopupMenus()Z
    .locals 2

    .line 337
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 338
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->hideSubMenus()Z

    move-result v1

    or-int v1, v0, v1

    .line 339
    return v1
.end method

.method public filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 4

    .line 242
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-ne v0, v1, :cond_0

    const/4 v2, 0x0

    .line 245
    return v2

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v3

    return v3
.end method

.method public flagActionItems()Z
    .locals 33

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 371
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMaxItems:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mActionItemWidthLimit:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    move-object v13, v11

    check-cast v13, Landroid/view/ViewGroup;

    move-object v12, v13

    .line 377
    const/4 v14, 0x0

    .line 378
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_0
    move/from16 v0, v18

    if-ge v0, v5, :cond_3

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v21, v19

    check-cast v21, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    move-object/from16 v20, v21

    move-object/from16 v0, v20

    .line 383
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 384
    add-int/lit8 v14, v14, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v0, v20

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 393
    const/4 v6, 0x0

    .line 381
    :cond_0
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, v20

    .line 385
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v22

    if-eqz v22, :cond_2

    .line 386
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_2
    const/16 v17, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    if-nez v17, :cond_4

    add-int v18, v14, v15

    move/from16 v0, v18

    if-le v0, v6, :cond_5

    .line 400
    :cond_4
    add-int/lit8 v6, v6, -0x1

    .line 402
    :cond_5
    sub-int v14, v6, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    .line 405
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 407
    const/4 v15, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMinCellSize:I

    move/from16 v18, v0

    div-int v18, v7, v18

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMinCellSize:I

    rem-int v15, v7, v6

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMinCellSize:I

    div-int v15, v15, v18

    add-int v15, v6, v15

    :cond_6
    const/16 v24, 0x0

    :goto_2
    move/from16 v0, v24

    if-ge v0, v5, :cond_1d

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v25, v19

    check-cast v25, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    move-object/from16 v20, v25

    move-object/from16 v0, v20

    .line 419
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v22

    if-eqz v22, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2, v12}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->getItemView(Landroid/support/v7/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v27, v0

    if-nez v27, :cond_7

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v22, v0

    if-eqz v22, :cond_b

    const/4 v9, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-static {v0, v15, v1, v8, v9}, Landroid/support/v7/internal/view/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v6

    sub-int v18, v18, v6

    :goto_3
    move-object/from16 v0, v26

    .line 430
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 431
    sub-int/2addr v7, v6

    if-nez v16, :cond_8

    move/from16 v16, v6

    :cond_8
    move-object/from16 v0, v20

    .line 435
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v6

    if-eqz v6, :cond_9

    .line 435
    const/4 v9, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 435
    :cond_9
    const/4 v9, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 416
    :cond_a
    :goto_4
    add-int/lit8 v24, v24, 0x1

    goto :goto_2

    :cond_b
    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v8}, Landroid/view/View;->measure(II)V

    goto :goto_3

    :cond_c
    move-object/from16 v0, v20

    .line 440
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v22

    if-eqz v22, :cond_a

    move-object/from16 v0, v20

    .line 443
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v28

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v17

    if-gtz v14, :cond_d

    if-eqz v17, :cond_15

    :cond_d
    if-lez v7, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v22, v0

    if-eqz v22, :cond_e

    if-lez v18, :cond_15

    :cond_e
    const/16 v22, 0x1

    :goto_5
    if-eqz v22, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2, v12}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->getItemView(Landroid/support/v7/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v26, v0

    if-nez v26, :cond_f

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v29, v0

    if-eqz v29, :cond_16

    const/4 v9, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-static {v0, v15, v1, v8, v9}, Landroid/support/v7/internal/view/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v6

    sub-int v18, v18, v6

    if-nez v6, :cond_10

    const/16 v22, 0x0

    :cond_10
    :goto_6
    move-object/from16 v0, v27

    .line 463
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 464
    sub-int/2addr v7, v6

    if-nez v16, :cond_11

    move/from16 v16, v6

    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v29, v0

    if-eqz v29, :cond_18

    if-ltz v7, :cond_17

    const/16 v29, 0x1

    :goto_7
    and-int v22, v22, v29

    :cond_12
    :goto_8
    if-eqz v22, :cond_1a

    if-eqz v28, :cond_1a

    const/4 v9, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_13
    if-eqz v22, :cond_14

    .line 495
    add-int/lit8 v14, v14, -0x1

    :cond_14
    move-object/from16 v0, v20

    move/from16 v1, v22

    .line 498
    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    goto/16 :goto_4

    :cond_15
    const/16 v22, 0x0

    goto :goto_5

    :cond_16
    move-object/from16 v0, v27

    invoke-virtual {v0, v8, v8}, Landroid/view/View;->measure(II)V

    goto :goto_6

    :cond_17
    const/16 v29, 0x0

    goto :goto_7

    .line 473
    :cond_18
    add-int v30, v7, v16

    if-lez v30, :cond_19

    const/16 v29, 0x1

    :goto_9
    and-int v22, v22, v29

    goto :goto_8

    :cond_19
    const/16 v29, 0x0

    goto :goto_9

    :cond_1a
    if-eqz v17, :cond_13

    const/4 v9, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 482
    const/4 v6, 0x0

    :goto_a
    move/from16 v0, v24

    if-ge v6, v0, :cond_13

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v32, v19

    check-cast v32, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    move-object/from16 v31, v32

    move-object/from16 v0, v31

    .line 484
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v30

    move/from16 v0, v30

    move/from16 v1, v28

    if-ne v0, v1, :cond_1c

    move-object/from16 v0, v31

    .line 486
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v29

    if-eqz v29, :cond_1b

    .line 487
    add-int/lit8 v14, v14, 0x1

    .line 487
    :cond_1b
    const/4 v9, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 482
    :cond_1c
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 482
    :cond_1d
    const/4 v9, 0x1

    return v9
.end method

.method public getItemView(Landroid/support/v7/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 158
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    instance-of v1, p2, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    if-nez v1, :cond_1

    .line 161
    const/4 p2, 0x0

    .line 163
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->getItemView(Landroid/support/v7/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 165
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 167
    move-object v4, p3

    .line 167
    check-cast v4, Landroid/support/v7/internal/view/menu/ActionMenuView;

    .line 167
    move-object v3, v4

    .line 168
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 169
    invoke-virtual {v3, v5}, Landroid/support/v7/internal/view/menu/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 170
    invoke-virtual {v3, v5}, Landroid/support/v7/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    :cond_3
    return-object v0

    .line 165
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/MenuView;
    .locals 3

    .line 151
    invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/MenuView;

    move-result-object v0

    .line 152
    move-object v2, v0

    .line 152
    check-cast v2, Landroid/support/v7/internal/view/menu/ActionMenuView;

    .line 152
    move-object v1, v2

    invoke-virtual {v1, p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->setPresenter(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;)V

    .line 153
    return-object v0
.end method

.method public hideOverflowMenu()Z
    .locals 7

    .line 317
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    if-eqz v1, :cond_0

    .line 318
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    move-object v3, v1

    check-cast v3, Landroid/view/View;

    move-object v2, v3

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v4, 0x0

    iput-object v4, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    const/4 v5, 0x1

    .line 328
    return v5

    .line 323
    :cond_0
    iget-object v6, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mOverflowPopup:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    if-eqz v6, :cond_1

    .line 325
    invoke-virtual {v6}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 323
    const/4 v5, 0x1

    return v5

    .line 323
    :cond_1
    const/4 v5, 0x0

    return v5
.end method

.method public hideSubMenus()Z
    .locals 2

    .line 348
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->dismiss()V

    .line 349
    const/4 v1, 0x1

    .line 352
    return v1

    .line 349
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public initForMenu(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;)V
    .locals 13

    .line 81
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->initForMenu(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;)V

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 85
    invoke-static {p1}, Landroid/support/v7/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroid/support/v7/internal/view/ActionBarPolicy;

    move-result-object v1

    .line 86
    iget-boolean v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mReserveOverflowSet:Z

    if-nez v2, :cond_0

    .line 87
    invoke-virtual {v1}, Landroid/support/v7/internal/view/ActionBarPolicy;->showsOverflowMenuButton()Z

    move-result v2

    iput-boolean v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    .line 90
    :cond_0
    iget-boolean v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mWidthLimitSet:Z

    if-nez v2, :cond_1

    .line 91
    invoke-virtual {v1}, Landroid/support/v7/internal/view/ActionBarPolicy;->getEmbeddedMenuWidthLimit()I

    move-result v3

    iput v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mWidthLimit:I

    .line 95
    :cond_1
    iget-boolean v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v2, :cond_2

    .line 96
    invoke-virtual {v1}, Landroid/support/v7/internal/view/ActionBarPolicy;->getMaxActionButtons()I

    move-result v3

    iput v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMaxItems:I

    .line 99
    :cond_2
    iget v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mWidthLimit:I

    .line 100
    iget-boolean v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v2, :cond_4

    .line 101
    iget-object v4, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-nez v4, :cond_3

    .line 102
    new-instance v5, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;

    iget-object p1, p0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v5, p0, p1}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v5, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 103
    const/4 v7, 0x0

    .line 103
    const/4 v8, 0x0

    .line 103
    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 104
    iget-object v4, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v4, v6, v6}, Landroid/view/View;->measure(II)V

    .line 106
    :cond_3
    iget-object v4, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v3, v6

    .line 111
    :goto_0
    iput v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mActionItemWidthLimit:I

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v10, v9, Landroid/util/DisplayMetrics;->density:F

    const v11, 0x42600000    # 56.0f

    mul-float v10, v11, v10

    float-to-int v3, v10

    iput v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMinCellSize:I

    .line 116
    const/4 v12, 0x0

    .line 116
    iput-object v12, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 117
    return-void

    .line 108
    :cond_4
    const/4 v12, 0x0

    .line 108
    iput-object v12, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 3

    .line 359
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mOverflowPopup:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mOverflowPopup:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isOverflowReserved()Z
    .locals 1

    .line 366
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    return v0
.end method

.method public onCloseMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V
    .locals 0

    .line 506
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 507
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->onCloseMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V

    .line 508
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    .line 120
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v0, :cond_0

    .line 121
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v7/appcompat/R$integer;->abc_max_action_buttons:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMaxItems:I

    .line 124
    :cond_0
    iget-object v4, p0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz v4, :cond_1

    .line 125
    iget-object v4, p0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    .line 125
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v7/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 127
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 8

    move-object v1, p1

    check-cast v1, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$SavedState;

    move-object v0, v1

    .line 520
    iget v2, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$SavedState;->openSubMenuId:I

    if-lez v2, :cond_0

    .line 521
    iget-object v3, p0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    iget v2, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$SavedState;->openSubMenuId:I

    invoke-virtual {v3, v2}, Landroid/support/v7/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 523
    invoke-interface {v4}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Landroid/support/v7/internal/view/menu/SubMenuBuilder;

    move-object v6, v7

    .line 524
    invoke-virtual {p0, v6}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->onSubMenuSelected(Landroid/support/v7/internal/view/menu/SubMenuBuilder;)Z

    .line 527
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 512
    new-instance v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$SavedState;

    invoke-direct {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$SavedState;-><init>()V

    .line 513
    iget v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mOpenSubMenuId:I

    iput v1, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$SavedState;->openSubMenuId:I

    .line 514
    return-object v0
.end method

.method public onSubMenuSelected(Landroid/support/v7/internal/view/menu/SubMenuBuilder;)Z
    .locals 11

    .line 249
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_1

    .line 249
    :cond_0
    const/4 v1, 0x0

    .line 269
    return v1

    .line 253
    :cond_1
    move-object v2, p1

    .line 254
    :goto_0
    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eq v3, v4, :cond_2

    .line 255
    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/support/v7/internal/view/menu/SubMenuBuilder;

    move-object v2, v5

    goto :goto_0

    .line 257
    :cond_2
    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_3

    .line 259
    iget-object v7, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v7, :cond_0

    .line 265
    :cond_3
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    iput v8, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 266
    new-instance v9, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-direct {v9, p0, p1}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;-><init>(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/support/v7/internal/view/menu/SubMenuBuilder;)V

    iput-object v9, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    .line 267
    iget-object v9, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    .line 267
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->show(Landroid/os/IBinder;)V

    .line 268
    invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Landroid/support/v7/internal/view/menu/SubMenuBuilder;)Z

    .line 267
    const/4 v1, 0x1

    return v1
.end method

.method public onSubUiVisibilityChanged(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Landroid/support/v7/internal/view/menu/SubMenuBuilder;)Z

    .line 537
    :goto_0
    return-void

    .line 535
    :cond_0
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    .line 535
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/view/menu/MenuBuilder;->close(Z)V

    goto :goto_0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 0

    .line 146
    iput-boolean p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    .line 147
    return-void
.end method

.method public setItemLimit(I)V
    .locals 1

    .line 141
    iput p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMaxItems:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMaxItemsSet:Z

    .line 143
    return-void
.end method

.method public setReserveOverflow(Z)V
    .locals 1

    .line 136
    iput-boolean p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mReserveOverflowSet:Z

    .line 138
    return-void
.end method

.method public setWidthLimit(IZ)V
    .locals 1

    .line 130
    iput p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mWidthLimit:I

    .line 131
    iput-boolean p2, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mWidthLimitSet:Z

    .line 133
    return-void
.end method

.method public shouldIncludeItem(ILandroid/support/v7/internal/view/menu/MenuItemImpl;)Z
    .locals 1

    .line 186
    invoke-virtual {p2}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 16

    move-object/from16 v0, p0

    .line 295
    iget-boolean v6, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v6

    if-nez v6, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    if-eqz v8, :cond_0

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v9, :cond_0

    .line 297
    new-instance v10, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    const/4 v13, 0x1

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v7

    move-object v4, v12

    move v5, v13

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowPopup;-><init>(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 298
    new-instance v9, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v10}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;-><init>(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowPopup;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    move-object/from16 v0, p0

    .line 300
    iget-object v8, v0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    move-object v14, v8

    check-cast v14, Landroid/view/View;

    move-object v12, v14

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v12, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-super {v0, v15}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Landroid/support/v7/internal/view/menu/SubMenuBuilder;)Z

    const/4 v13, 0x1

    .line 308
    return v13

    :cond_0
    const/4 v13, 0x0

    return v13
.end method

.method public updateMenuView(Z)V
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 191
    invoke-super {v0, v1}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    move-object/from16 v0, p0

    .line 193
    iget-object v2, v0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    if-nez v2, :cond_0

    .line 238
    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    .line 197
    iget-object v3, v0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    .line 198
    iget-object v3, v0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getActionItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 199
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 200
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_2

    .line 201
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    move-object v8, v9

    invoke-virtual {v8}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getSupportActionProvider()Landroid/support/v4/view/ActionProvider;

    move-result-object v10

    if-eqz v10, :cond_1

    move-object/from16 v0, p0

    .line 203
    invoke-virtual {v10, v0}, Landroid/support/v4/view/ActionProvider;->setSubUiVisibilityListener(Landroid/support/v4/view/ActionProvider$SubUiVisibilityListener;)V

    .line 200
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    .line 208
    iget-object v3, v0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 211
    :goto_2
    const/4 v11, 0x0

    move-object/from16 v0, p0

    .line 212
    iget-boolean v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    move/from16 p1, v0

    if-eqz p1, :cond_3

    if-eqz v4, :cond_3

    .line 213
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 213
    const/4 v12, 0x1

    if-ne v6, v12, :cond_9

    .line 215
    const/4 v12, 0x0

    .line 215
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    move-object v8, v13

    invoke-virtual {v8}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result p1

    if-nez p1, :cond_8

    const/4 v11, 0x1

    :cond_3
    :goto_3
    if-eqz v11, :cond_b

    move-object/from16 v0, p0

    .line 222
    iget-object v14, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-nez v14, :cond_4

    .line 223
    new-instance v15, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mSystemContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    :cond_4
    move-object/from16 v0, p0

    .line 225
    iget-object v14, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    move-object/from16 v19, v17

    check-cast v19, Landroid/view/ViewGroup;

    move-object/from16 v18, v19

    move-object/from16 v0, p0

    .line 226
    iget-object v2, v0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    move-object/from16 v0, v18

    if-eq v0, v2, :cond_6

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    .line 228
    iget-object v14, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_5
    move-object/from16 v0, p0

    .line 230
    iget-object v2, v0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    move-object/from16 v21, v2

    check-cast v21, Landroid/support/v7/internal/view/menu/ActionMenuView;

    move-object/from16 v20, v21

    move-object/from16 v0, p0

    .line 231
    iget-object v14, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    move-object/from16 v0, v20

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->generateOverflowButtonLayoutParams()Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v14, v1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    :goto_4
    move-object/from16 v0, p0

    .line 237
    iget-object v2, v0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    move-object/from16 v23, v2

    check-cast v23, Landroid/support/v7/internal/view/menu/ActionMenuView;

    move-object/from16 v20, v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    move/from16 p1, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->setOverflowReserved(Z)V

    goto/16 :goto_0

    .line 208
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_8
    const/4 v11, 0x0

    .line 215
    goto :goto_3

    :cond_9
    if-lez v6, :cond_a

    const/4 v11, 0x1

    :goto_5
    goto :goto_3

    :cond_a
    const/4 v11, 0x0

    goto :goto_5

    :cond_b
    move-object/from16 v0, p0

    .line 233
    iget-object v14, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    move-object/from16 v0, v17

    if-ne v0, v2, :cond_6

    move-object/from16 v0, p0

    .line 234
    iget-object v2, v0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    move-object/from16 v24, v2

    check-cast v24, Landroid/view/ViewGroup;

    move-object/from16 v18, v24

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_4
.end method
