.class Landroid/support/v7/internal/view/menu/MenuWrapperICS;
.super Landroid/support/v7/internal/view/menu/BaseMenuWrapper;
.source "MenuWrapperICS.java"

# interfaces
.implements Landroid/support/v4/internal/view/SupportMenu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/internal/view/menu/BaseMenuWrapper",
        "<",
        "Landroid/view/Menu;",
        ">;",
        "Landroid/support/v4/internal/view/SupportMenu;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/view/Menu;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Landroid/support/v7/internal/view/menu/BaseMenuWrapper;-><init>(Ljava/lang/Object;)V

    .line 31
    return-void
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .locals 5

    .line 40
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/Menu;

    move-object v1, v2

    invoke-interface {v1, p1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v4

    return-object v4
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 5

    .line 50
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/Menu;

    move-object v1, v2

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v4

    return-object v4
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 5

    .line 45
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/Menu;

    move-object v1, v2

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v4

    return-object v4
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 5

    .line 35
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/Menu;

    move-object v1, v2

    invoke-interface {v1, p1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v4

    return-object v4
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 16

    .line 77
    const/4 v9, 0x0

    if-eqz p8, :cond_0

    move-object/from16 v0, p8

    array-length v10, v0

    new-array v9, v10, [Landroid/view/MenuItem;

    :cond_0
    move-object/from16 v0, p0

    .line 82
    iget-object v11, v0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v13, v11

    check-cast v13, Landroid/view/Menu;

    move-object v12, v13

    move-object v0, v12

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object v8, v9

    invoke-interface/range {v0 .. v8}, Landroid/view/Menu;->addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I

    move-result p3

    if-eqz v9, :cond_1

    .line 86
    const/4 v10, 0x0

    array-length v0, v9

    move/from16 p7, v0

    :goto_0
    move/from16 v0, p7

    if-ge v10, v0, :cond_1

    .line 87
    aget-object v14, v9, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v15

    aput-object v15, p8, v10

    .line 86
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 91
    :cond_1
    return p3
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 4

    .line 60
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/Menu;

    move-object v1, v2

    invoke-interface {v1, p1}, Landroid/view/Menu;->addSubMenu(I)Landroid/view/SubMenu;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->getSubMenuWrapper(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object v3

    return-object v3
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 4

    .line 70
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/Menu;

    move-object v1, v2

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->getSubMenuWrapper(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object v3

    return-object v3
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 4

    .line 65
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/Menu;

    move-object v1, v2

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->getSubMenuWrapper(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object v3

    return-object v3
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 4

    .line 55
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/Menu;

    move-object v1, v2

    invoke-interface {v1, p1}, Landroid/view/Menu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->getSubMenuWrapper(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object v3

    return-object v3
.end method

.method public clear()V
    .locals 3

    .line 108
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->internalClear()V

    .line 109
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/Menu;

    move-object v1, v2

    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    .line 110
    return-void
.end method

.method public close()V
    .locals 3

    .line 149
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/Menu;

    move-object v1, v2

    invoke-interface {v1}, Landroid/view/Menu;->close()V

    .line 150
    return-void
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 5

    .line 134
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/Menu;

    move-object v1, v2

    invoke-interface {v1, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v4

    return-object v4
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 5

    .line 144
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/Menu;

    move-object v1, v2

    invoke-interface {v1, p1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v4

    return-object v4
.end method

.method public hasVisibleItems()Z
    .locals 4

    .line 129
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/Menu;

    move-object v1, v2

    invoke-interface {v1}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v3

    return v3
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 159
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/Menu;

    move-object v1, v2

    invoke-interface {v1, p1, p2}, Landroid/view/Menu;->isShortcutKey(ILandroid/view/KeyEvent;)Z

    move-result v3

    return v3
.end method

.method public performIdentifierAction(II)Z
    .locals 4

    .line 164
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/Menu;

    move-object v1, v2

    invoke-interface {v1, p1, p2}, Landroid/view/Menu;->performIdentifierAction(II)Z

    move-result v3

    return v3
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 4

    .line 154
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/Menu;

    move-object v1, v2

    invoke-interface {v1, p1, p2, p3}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v3

    return v3
.end method

.method public removeGroup(I)V
    .locals 3

    .line 102
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->internalRemoveGroup(I)V

    .line 103
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/Menu;

    move-object v1, v2

    invoke-interface {v1, p1}, Landroid/view/Menu;->removeGroup(I)V

    .line 104
    return-void
.end method

.method public removeItem(I)V
    .locals 3

    .line 96
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->internalRemoveItem(I)V

    .line 97
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/Menu;

    move-object v1, v2

    invoke-interface {v1, p1}, Landroid/view/Menu;->removeItem(I)V

    .line 98
    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .locals 3

    .line 114
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/Menu;

    move-object v1, v2

    invoke-interface {v1, p1, p2, p3}, Landroid/view/Menu;->setGroupCheckable(IZZ)V

    .line 115
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 3

    .line 124
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/Menu;

    move-object v1, v2

    invoke-interface {v1, p1, p2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 125
    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 3

    .line 119
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/Menu;

    move-object v1, v2

    invoke-interface {v1, p1, p2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 120
    return-void
.end method

.method public setQwertyMode(Z)V
    .locals 3

    .line 169
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/Menu;

    move-object v1, v2

    invoke-interface {v1, p1}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 170
    return-void
.end method

.method public size()I
    .locals 4

    .line 139
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/Menu;

    move-object v1, v2

    invoke-interface {v1}, Landroid/view/Menu;->size()I

    move-result v3

    return v3
.end method
