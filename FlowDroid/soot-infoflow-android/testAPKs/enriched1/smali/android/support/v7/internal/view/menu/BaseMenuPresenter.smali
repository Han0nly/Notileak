.class public abstract Landroid/support/v7/internal/view/menu/BaseMenuPresenter;
.super Ljava/lang/Object;
.source "BaseMenuPresenter.java"

# interfaces
.implements Landroid/support/v7/internal/view/menu/MenuPresenter;


# instance fields
.field private mCallback:Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;

.field protected mContext:Landroid/content/Context;

.field private mId:I

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mItemLayoutRes:I

.field protected mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

.field private mMenuLayoutRes:I

.field protected mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

.field protected mSystemContext:Landroid/content/Context;

.field protected mSystemInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mSystemContext:Landroid/content/Context;

    .line 58
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    .line 59
    iput p2, p0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mMenuLayoutRes:I

    .line 60
    iput p3, p0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mItemLayoutRes:I

    .line 61
    return-void
.end method


# virtual methods
.method protected addItemView(Landroid/view/View;I)V
    .locals 5

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    move-object v1, v2

    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 134
    :cond_0
    iget-object v3, p0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    move-object v1, v4

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 135
    return-void
.end method

.method public abstract bindItemView(Landroid/support/v7/internal/view/menu/MenuItemImpl;Landroid/support/v7/internal/view/menu/MenuView$ItemView;)V
.end method

.method public collapseItemActionView(Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/support/v7/internal/view/menu/MenuItemImpl;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public createItemView(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/MenuView$ItemView;
    .locals 6

    .line 159
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mItemLayoutRes:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/support/v7/internal/view/menu/MenuView$ItemView;

    move-object v4, v5

    return-object v4
.end method

.method public expandItemActionView(Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/support/v7/internal/view/menu/MenuItemImpl;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 1

    .line 145
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .line 229
    iget v0, p0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mId:I

    return v0
.end method

.method public getItemView(Landroid/support/v7/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    instance-of v0, p2, Landroid/support/v7/internal/view/menu/MenuView$ItemView;

    if-eqz v0, :cond_0

    .line 176
    move-object v2, p2

    .line 176
    check-cast v2, Landroid/support/v7/internal/view/menu/MenuView$ItemView;

    .line 176
    move-object v1, v2

    .line 180
    :goto_0
    invoke-virtual {p0, p1, v1}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->bindItemView(Landroid/support/v7/internal/view/menu/MenuItemImpl;Landroid/support/v7/internal/view/menu/MenuView$ItemView;)V

    .line 181
    move-object v3, v1

    .line 181
    check-cast v3, Landroid/view/View;

    .line 181
    move-object p2, v3

    return-object p2

    .line 178
    :cond_0
    invoke-virtual {p0, p3}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->createItemView(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/MenuView$ItemView;

    move-result-object v1

    goto :goto_0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/MenuView;
    .locals 7

    .line 71
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    if-nez v0, :cond_0

    .line 72
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mMenuLayoutRes:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/support/v7/internal/view/menu/MenuView;

    move-object v0, v5

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    .line 73
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    iget-object v6, p0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v6}, Landroid/support/v7/internal/view/menu/MenuView;->initialize(Landroid/support/v7/internal/view/menu/MenuBuilder;)V

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 77
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;)V
    .locals 1

    .line 65
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    .line 66
    iget-object p1, p0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 67
    iput-object p2, p0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    .line 68
    return-void
.end method

.method public onCloseMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V
    .locals 1

    .line 204
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mCallback:Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mCallback:Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V

    .line 207
    :cond_0
    return-void
.end method

.method public onSubMenuSelected(Landroid/support/v7/internal/view/menu/SubMenuBuilder;)Z
    .locals 3

    .line 210
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mCallback:Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mCallback:Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;)Z

    move-result v1

    .line 213
    return v1

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setCallback(Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0

    .line 150
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mCallback:Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;

    .line 151
    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 233
    iput p1, p0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mId:I

    .line 234
    return-void
.end method

.method public shouldIncludeItem(ILandroid/support/v7/internal/view/menu/MenuItemImpl;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public updateMenuView(Z)V
    .locals 19

    move-object/from16 v0, p0

    .line 84
    iget-object v2, v0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    move-object v4, v2

    check-cast v4, Landroid/view/ViewGroup;

    move-object v3, v4

    if-nez v3, :cond_1

    .line 121
    :cond_0
    return-void

    .line 89
    :cond_1
    const/4 v5, 0x0

    move-object/from16 v0, p0

    .line 90
    iget-object v6, v0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz v6, :cond_6

    move-object/from16 v0, p0

    .line 91
    iget-object v6, v0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v6}, Landroid/support/v7/internal/view/menu/MenuBuilder;->flagActionItems()V

    move-object/from16 v0, p0

    .line 92
    iget-object v6, v0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v6}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v7

    .line 93
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 94
    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_6

    .line 95
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v12, v10

    check-cast v12, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    move-object v11, v12

    move-object/from16 v0, p0

    .line 96
    invoke-virtual {v0, v5, v11}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->shouldIncludeItem(ILandroid/support/v7/internal/view/menu/MenuItemImpl;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 97
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    instance-of v0, v13, Landroid/support/v7/internal/view/menu/MenuView$ItemView;

    move/from16 p1, v0

    if-eqz p1, :cond_5

    move-object v15, v13

    check-cast v15, Landroid/support/v7/internal/view/menu/MenuView$ItemView;

    move-object v14, v15

    invoke-interface {v14}, Landroid/support/v7/internal/view/menu/MenuView$ItemView;->getItemData()Landroid/support/v7/internal/view/menu/MenuItemImpl;

    move-result-object v16

    :goto_1
    move-object/from16 v0, p0

    .line 100
    invoke-virtual {v0, v11, v13, v3}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->getItemView(Landroid/support/v7/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v16

    if-eq v11, v0, :cond_2

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    :cond_2
    move-object/from16 v0, v17

    if-eq v0, v13, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    .line 108
    invoke-virtual {v0, v1, v5}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->addItemView(Landroid/view/View;I)V

    .line 110
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 94
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_5
    const/16 v16, 0x0

    goto :goto_1

    .line 116
    :cond_6
    :goto_2
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v5, v8, :cond_0

    move-object/from16 v0, p0

    .line 117
    invoke-virtual {v0, v3, v5}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result p1

    if-nez p1, :cond_6

    .line 118
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method
