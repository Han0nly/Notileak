.class public Landroid/support/v7/internal/view/menu/SubMenuBuilder;
.super Landroid/support/v7/internal/view/menu/MenuBuilder;
.source "SubMenuBuilder.java"

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field private mItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;

.field private mParentMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/support/v7/internal/view/menu/MenuItemImpl;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Landroid/support/v7/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p2, p0, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->mParentMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    .line 41
    iput-object p3, p0, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->mItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .line 42
    return-void
.end method


# virtual methods
.method public clearHeader()V
    .locals 0

    .line 124
    return-void
.end method

.method public collapseItemActionView(Landroid/support/v7/internal/view/menu/MenuItemImpl;)Z
    .locals 2

    .line 133
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->mParentMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->collapseItemActionView(Landroid/support/v7/internal/view/menu/MenuItemImpl;)Z

    move-result v1

    return v1
.end method

.method public dispatchMenuItemSelected(Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 3

    .line 83
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/view/menu/MenuBuilder;->dispatchMenuItemSelected(Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->mParentMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, p1, p2}, Landroid/support/v7/internal/view/menu/MenuBuilder;->dispatchMenuItemSelected(Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public expandItemActionView(Landroid/support/v7/internal/view/menu/MenuItemImpl;)Z
    .locals 2

    .line 128
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->mParentMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->expandItemActionView(Landroid/support/v7/internal/view/menu/MenuItemImpl;)Z

    move-result v1

    return v1
.end method

.method public getActionViewStatesKey()Ljava/lang/String;
    .locals 6

    .line 138
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->mItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->mItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v1

    :goto_0
    if-nez v1, :cond_1

    const/4 v2, 0x0

    .line 142
    return-object v2

    .line 138
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 142
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getItem()Landroid/view/MenuItem;
    .locals 1

    .line 69
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->mItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public getParentMenu()Landroid/view/Menu;
    .locals 1

    .line 65
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->mParentMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getRootMenu()Landroid/support/v7/internal/view/menu/MenuBuilder;
    .locals 1

    .line 78
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->mParentMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public isQwertyMode()Z
    .locals 2

    .line 51
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->mParentMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v1

    return v1
.end method

.method public isShortcutsVisible()Z
    .locals 2

    .line 61
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->mParentMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result v1

    return v1
.end method

.method public setCallback(Landroid/support/v7/internal/view/menu/MenuBuilder$Callback;)V
    .locals 1

    .line 74
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->mParentMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->setCallback(Landroid/support/v7/internal/view/menu/MenuBuilder$Callback;)V

    .line 75
    return-void
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 3

    .line 103
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/support/v7/internal/view/menu/MenuBuilder;->setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/internal/view/menu/MenuBuilder;

    .line 104
    return-object p0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 0

    .line 98
    invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/internal/view/menu/MenuBuilder;

    .line 99
    return-object p0
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 3

    .line 113
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/support/v7/internal/view/menu/MenuBuilder;->setHeaderTitleInt(Ljava/lang/CharSequence;)Landroid/support/v7/internal/view/menu/MenuBuilder;

    .line 114
    return-object p0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    .line 108
    invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->setHeaderTitleInt(Ljava/lang/CharSequence;)Landroid/support/v7/internal/view/menu/MenuBuilder;

    .line 109
    return-object p0
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 0

    .line 118
    invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->setHeaderViewInt(Landroid/view/View;)Landroid/support/v7/internal/view/menu/MenuBuilder;

    .line 119
    return-object p0
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 1

    .line 93
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->mItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->setIcon(I)Landroid/view/MenuItem;

    .line 94
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    .line 88
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->mItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 89
    return-object p0
.end method

.method public setQwertyMode(Z)V
    .locals 1

    .line 46
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->mParentMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 47
    return-void
.end method

.method public setShortcutsVisible(Z)V
    .locals 1

    .line 56
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->mParentMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->setShortcutsVisible(Z)V

    .line 57
    return-void
.end method