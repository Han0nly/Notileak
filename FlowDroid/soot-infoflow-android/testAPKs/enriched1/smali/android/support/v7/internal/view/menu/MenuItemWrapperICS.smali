.class public Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;
.super Landroid/support/v7/internal/view/menu/BaseMenuWrapper;
.source "MenuItemWrapperICS.java"

# interfaces
.implements Landroid/support/v4/internal/view/SupportMenuItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;,
        Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;,
        Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;,
        Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/internal/view/menu/BaseMenuWrapper",
        "<",
        "Landroid/view/MenuItem;",
        ">;",
        "Landroid/support/v4/internal/view/SupportMenuItem;"
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "MenuItemWrapper"


# instance fields
.field private final mEmulateProviderVisibilityOverride:Z

.field private mLastRequestVisible:Z

.field private mSetExclusiveCheckableMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Landroid/view/MenuItem;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;-><init>(Landroid/view/MenuItem;Z)V

    .line 55
    return-void
.end method

.method constructor <init>(Landroid/view/MenuItem;Z)V
    .locals 1

    .line 48
    invoke-direct {p0, p1}, Landroid/support/v7/internal/view/menu/BaseMenuWrapper;-><init>(Ljava/lang/Object;)V

    .line 49
    invoke-interface {p1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mLastRequestVisible:Z

    .line 50
    iput-boolean p2, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mEmulateProviderVisibilityOverride:Z

    .line 51
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;)Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mEmulateProviderVisibilityOverride:Z

    return v0
.end method

.method static synthetic access$100(Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;)Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mLastRequestVisible:Z

    return v0
.end method


# virtual methods
.method final checkActionProviderOverrideVisibility()Z
    .locals 4

    const/4 v0, 0x0

    .line 347
    iget-boolean v1, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mLastRequestVisible:Z

    if-eqz v1, :cond_0

    .line 348
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->getSupportActionProvider()Landroid/support/v4/view/ActionProvider;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/support/v4/view/ActionProvider;->overridesItemVisibility()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Landroid/support/v4/view/ActionProvider;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v3, 0x0

    .line 350
    invoke-virtual {p0, v3}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->wrappedSetVisible(Z)Landroid/view/MenuItem;

    .line 351
    const/4 v0, 0x1

    .line 354
    :cond_0
    return v0
.end method

.method public collapseActionView()Z
    .locals 4

    .line 291
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/MenuItem;

    move-object v1, v2

    invoke-interface {v1}, Landroid/view/MenuItem;->collapseActionView()Z

    move-result v3

    return v3
.end method

.method createActionProviderWrapper(Landroid/support/v4/view/ActionProvider;)Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;
    .locals 1

    .line 340
    new-instance v0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;-><init>(Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;Landroid/support/v4/view/ActionProvider;)V

    return-object v0
.end method

.method public expandActionView()Z
    .locals 4

    .line 286
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/MenuItem;

    move-object v1, v2

    invoke-interface {v1}, Landroid/view/MenuItem;->expandActionView()Z

    move-result v3

    return v3
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 4

    .line 281
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/MenuItem;

    move-object v1, v2

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v3

    return-object v3
.end method

.method public getActionView()Landroid/view/View;
    .locals 7

    .line 263
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/MenuItem;

    move-object v1, v2

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;

    if-eqz v4, :cond_0

    .line 265
    move-object v6, v3

    .line 265
    check-cast v6, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;

    .line 265
    move-object v5, v6

    invoke-virtual {v5}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;->getWrappedView()Landroid/view/View;

    move-result-object v3

    .line 267
    :cond_0
    return-object v3
.end method

.method public getAlphabeticShortcut()C
    .locals 4

    .line 153
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/MenuItem;

    move-object v1, v2

    invoke-interface {v1}, Landroid/view/MenuItem;->getAlphabeticShortcut()C

    move-result v3

    return v3
.end method

.method public getGroupId()I
    .locals 4

    .line 64
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/MenuItem;

    move-object v1, v2

    invoke-interface {v1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v3

    return v3
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 114
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/MenuItem;

    move-object v1, v2

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    return-object v3
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 4

    .line 125
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/MenuItem;

    move-object v1, v2

    invoke-interface {v1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v3

    return-object v3
.end method

.method public getItemId()I
    .locals 4

    .line 59
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/MenuItem;

    move-object v1, v2

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    return v3
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 4

    .line 225
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/MenuItem;

    move-object v1, v2

    invoke-interface {v1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v3

    return-object v3
.end method

.method public getNumericShortcut()C
    .locals 4

    .line 142
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/MenuItem;

    move-object v1, v2

    invoke-interface {v1}, Landroid/view/MenuItem;->getNumericShortcut()C

    move-result v3

    return v3
.end method

.method public getOrder()I
    .locals 4

    .line 69
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/MenuItem;

    move-object v1, v2

    invoke-interface {v1}, Landroid/view/MenuItem;->getOrder()I

    move-result v3

    return v3
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 4

    .line 213
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/MenuItem;

    move-object v1, v2

    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->getSubMenuWrapper(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object v3

    return-object v3
.end method

.method public getSupportActionProvider()Landroid/support/v4/view/ActionProvider;
    .locals 8

    .line 322
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/MenuItem;

    move-object v1, v2

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;

    move-object v4, v5

    if-eqz v4, :cond_0

    iget-object v6, v4, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->mInner:Landroid/support/v4/view/ActionProvider;

    return-object v6

    :cond_0
    const/4 v7, 0x0

    return-object v7
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 4

    .line 86
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/MenuItem;

    move-object v1, v2

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 4

    .line 97
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/MenuItem;

    move-object v1, v2

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3
.end method

.method public hasSubMenu()Z
    .locals 4

    .line 208
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/MenuItem;

    move-object v1, v2

    invoke-interface {v1}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v3

    return v3
.end method

.method public isActionViewExpanded()Z
    .locals 4

    .line 296
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/MenuItem;

    move-object v1, v2

    invoke-interface {v1}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v3

    return v3
.end method

.method public isCheckable()Z
    .locals 4

    .line 164
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/MenuItem;

    move-object v1, v2

    invoke-interface {v1}, Landroid/view/MenuItem;->isCheckable()Z

    move-result v3

    return v3
.end method

.method public isChecked()Z
    .locals 4

    .line 175
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/MenuItem;

    move-object v1, v2

    invoke-interface {v1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v3

    return v3
.end method

.method public isEnabled()Z
    .locals 4

    .line 203
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/MenuItem;

    move-object v1, v2

    invoke-interface {v1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v3

    return v3
.end method

.method public isVisible()Z
    .locals 4

    .line 192
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/MenuItem;

    move-object v1, v2

    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v3

    return v3
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 4

    .line 272
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/MenuItem;

    move-object v1, v2

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;

    if-eqz p1, :cond_0

    iget-boolean v3, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mEmulateProviderVisibilityOverride:Z

    if-eqz v3, :cond_0

    .line 274
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->checkActionProviderOverrideVisibility()Z

    .line 276
    :cond_0
    return-object p0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .locals 8

    .line 251
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/MenuItem;

    move-object v1, v2

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 253
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/view/MenuItem;

    move-object v1, v3

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Landroid/support/v7/view/CollapsibleActionView;

    if-eqz v5, :cond_0

    .line 256
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/view/MenuItem;

    move-object v1, v6

    new-instance v7, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;

    invoke-direct {v7, v4}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;-><init>(Landroid/view/View;)V

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 258
    :cond_0
    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 5

    instance-of v0, p1, Landroid/support/v7/view/CollapsibleActionView;

    if-eqz v0, :cond_0

    .line 242
    new-instance v1, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;

    invoke-direct {v1, p1}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;-><init>(Landroid/view/View;)V

    move-object p1, v1

    .line 244
    :cond_0
    iget-object v2, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Landroid/view/MenuItem;

    move-object v3, v4

    invoke-interface {v3, p1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 245
    return-object p0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 3

    .line 147
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/MenuItem;

    move-object v1, v2

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 148
    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 3

    .line 158
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/MenuItem;

    move-object v1, v2

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 159
    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 3

    .line 169
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/MenuItem;

    move-object v1, v2

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 170
    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 3

    .line 197
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/MenuItem;

    move-object v1, v2

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 198
    return-object p0
.end method

.method public setExclusiveCheckable(Z)V
    .locals 13

    .line 329
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mSetExclusiveCheckableMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 330
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Landroid/view/MenuItem;

    move-object v2, v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const/4 v6, 0x1

    new-array v5, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v7, v5, v6

    const-string v8, "setExclusiveCheckable"

    invoke-virtual {v4, v8, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mSetExclusiveCheckableMethod:Ljava/lang/reflect/Method;

    .line 333
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mSetExclusiveCheckableMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    const/4 v6, 0x1

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v6, 0x0

    aput-object v10, v9, v6

    invoke-virtual {v0, v1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :goto_0
    return-void

    .line 334
    :catch_0
    move-exception v11

    const-string v8, "MenuItemWrapper"

    const-string v12, "Error while calling setExclusiveCheckable"

    invoke-static {v8, v12, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 3

    .line 108
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/MenuItem;

    move-object v1, v2

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 109
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 3

    .line 102
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/MenuItem;

    move-object v1, v2

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 103
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 3

    .line 119
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/MenuItem;

    move-object v1, v2

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 120
    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 3

    .line 136
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/MenuItem;

    move-object v1, v2

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;

    .line 137
    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 3

    .line 301
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/MenuItem;

    move-object v1, v2

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 302
    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 4

    .line 218
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/MenuItem;

    move-object v1, v2

    if-eqz p1, :cond_0

    new-instance v3, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;

    invoke-direct {v3, p0, p1}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;-><init>(Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    :goto_0
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 220
    return-object p0

    .line 218
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 3

    .line 130
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/MenuItem;

    move-object v1, v2

    invoke-interface {v1, p1, p2}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    .line 131
    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 3

    .line 230
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/MenuItem;

    move-object v1, v2

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 231
    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 3

    .line 235
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/MenuItem;

    move-object v1, v2

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 236
    return-object p0
.end method

.method public setSupportActionProvider(Landroid/support/v4/view/ActionProvider;)Landroid/support/v4/internal/view/SupportMenuItem;
    .locals 4

    .line 315
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/MenuItem;

    move-object v1, v2

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->createActionProviderWrapper(Landroid/support/v4/view/ActionProvider;)Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;

    move-result-object v3

    :goto_0
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;

    .line 317
    return-object p0

    .line 315
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setSupportOnActionExpandListener(Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;)Landroid/support/v4/internal/view/SupportMenuItem;
    .locals 5

    .line 308
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/MenuItem;

    move-object v1, v2

    if-eqz p1, :cond_0

    new-instance v3, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;

    invoke-direct {v3, p0, p1}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;-><init>(Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;)V

    :goto_0
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    const/4 v4, 0x0

    .line 310
    return-object v4

    :cond_0
    const/4 v3, 0x0

    .line 308
    goto :goto_0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 3

    .line 80
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/MenuItem;

    move-object v1, v2

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 81
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 3

    .line 74
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/MenuItem;

    move-object v1, v2

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 75
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 3

    .line 91
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/MenuItem;

    move-object v1, v2

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 92
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 2

    .line 180
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mEmulateProviderVisibilityOverride:Z

    if-eqz v0, :cond_0

    .line 181
    iput-boolean p1, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mLastRequestVisible:Z

    .line 183
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->checkActionProviderOverrideVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->wrappedSetVisible(Z)Landroid/view/MenuItem;

    move-result-object v1

    return-object v1
.end method

.method final wrappedSetVisible(Z)Landroid/view/MenuItem;
    .locals 3

    .line 358
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/MenuItem;

    move-object v1, v2

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v1

    return-object v1
.end method
