.class public final Landroid/support/v7/internal/view/menu/MenuWrapperFactory;
.super Ljava/lang/Object;
.source "MenuWrapperFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static createMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 4

    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 41
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 42
    new-instance v2, Landroid/support/v7/internal/view/menu/MenuItemWrapperJB;

    invoke-direct {v2, p0}, Landroid/support/v7/internal/view/menu/MenuItemWrapperJB;-><init>(Landroid/view/MenuItem;)V

    move-object p0, v2

    .line 46
    :cond_0
    return-object p0

    .line 43
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 43
    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 44
    new-instance v3, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;

    invoke-direct {v3, p0}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;-><init>(Landroid/view/MenuItem;)V

    return-object v3
.end method

.method public static createMenuWrapper(Landroid/view/Menu;)Landroid/view/Menu;
    .locals 3

    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 34
    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 35
    new-instance v2, Landroid/support/v7/internal/view/menu/MenuWrapperICS;

    invoke-direct {v2, p0}, Landroid/support/v7/internal/view/menu/MenuWrapperICS;-><init>(Landroid/view/Menu;)V

    move-object p0, v2

    .line 37
    :cond_0
    return-object p0
.end method

.method public static createSupportMenuItemWrapper(Landroid/view/MenuItem;)Landroid/support/v4/internal/view/SupportMenuItem;
    .locals 5

    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 66
    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 67
    new-instance v2, Landroid/support/v7/internal/view/menu/MenuItemWrapperJB;

    invoke-direct {v2, p0}, Landroid/support/v7/internal/view/menu/MenuItemWrapperJB;-><init>(Landroid/view/MenuItem;)V

    .line 69
    return-object v2

    .line 68
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 68
    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 69
    new-instance v3, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;

    invoke-direct {v3, p0}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;-><init>(Landroid/view/MenuItem;)V

    return-object v3

    .line 71
    :cond_1
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4
.end method

.method public static createSupportMenuWrapper(Landroid/view/Menu;)Landroid/support/v4/internal/view/SupportMenu;
    .locals 4

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 50
    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 51
    new-instance v2, Landroid/support/v7/internal/view/menu/MenuWrapperICS;

    invoke-direct {v2, p0}, Landroid/support/v7/internal/view/menu/MenuWrapperICS;-><init>(Landroid/view/Menu;)V

    return-object v2

    .line 53
    :cond_0
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3
.end method

.method public static createSupportSubMenuWrapper(Landroid/view/SubMenu;)Landroid/support/v4/internal/view/SupportSubMenu;
    .locals 4

    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 58
    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 59
    new-instance v2, Landroid/support/v7/internal/view/menu/SubMenuWrapperICS;

    invoke-direct {v2, p0}, Landroid/support/v7/internal/view/menu/SubMenuWrapperICS;-><init>(Landroid/view/SubMenu;)V

    return-object v2

    .line 61
    :cond_0
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3
.end method
