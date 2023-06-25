.class Landroid/support/v7/internal/view/menu/SubMenuWrapperICS;
.super Landroid/support/v7/internal/view/menu/MenuWrapperICS;
.source "SubMenuWrapperICS.java"

# interfaces
.implements Landroid/support/v4/internal/view/SupportSubMenu;


# direct methods
.method constructor <init>(Landroid/view/SubMenu;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Landroid/support/v7/internal/view/menu/MenuWrapperICS;-><init>(Landroid/view/Menu;)V

    .line 28
    return-void
.end method


# virtual methods
.method public clearHeader()V
    .locals 3

    .line 67
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/SubMenu;

    move-object v1, v2

    invoke-interface {v1}, Landroid/view/SubMenu;->clearHeader()V

    .line 68
    return-void
.end method

.method public getItem()Landroid/view/MenuItem;
    .locals 5

    .line 84
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/SubMenu;

    move-object v1, v2

    invoke-interface {v1}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/v7/internal/view/menu/SubMenuWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v4

    return-object v4
.end method

.method public getWrappedObject()Landroid/view/SubMenu;
    .locals 3

    .line 32
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/SubMenu;

    move-object v1, v2

    return-object v1
.end method

.method public bridge synthetic getWrappedObject()Ljava/lang/Object;
    .locals 1

    .line 25
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/SubMenuWrapperICS;->getWrappedObject()Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 3

    .line 49
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/SubMenu;

    move-object v1, v2

    invoke-interface {v1, p1}, Landroid/view/SubMenu;->setHeaderIcon(I)Landroid/view/SubMenu;

    .line 50
    return-object p0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 3

    .line 55
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/SubMenu;

    move-object v1, v2

    invoke-interface {v1, p1}, Landroid/view/SubMenu;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    .line 56
    return-object p0
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 3

    .line 37
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/SubMenu;

    move-object v1, v2

    invoke-interface {v1, p1}, Landroid/view/SubMenu;->setHeaderTitle(I)Landroid/view/SubMenu;

    .line 38
    return-object p0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 3

    .line 43
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/SubMenu;

    move-object v1, v2

    invoke-interface {v1, p1}, Landroid/view/SubMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 44
    return-object p0
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 3

    .line 61
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/SubMenu;

    move-object v1, v2

    invoke-interface {v1, p1}, Landroid/view/SubMenu;->setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;

    .line 62
    return-object p0
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 3

    .line 72
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/SubMenu;

    move-object v1, v2

    invoke-interface {v1, p1}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    .line 73
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 3

    .line 78
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/SubMenu;

    move-object v1, v2

    invoke-interface {v1, p1}, Landroid/view/SubMenu;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    .line 79
    return-object p0
.end method
