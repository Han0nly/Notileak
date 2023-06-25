.class Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;
.super Landroid/widget/ImageButton;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/support/v7/internal/view/menu/ActionMenuView$ActionMenuChildView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowMenuButton"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 3

    .line 574
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    sget v0, Landroid/support/v7/appcompat/R$attr;->actionOverflowButtonStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, v0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v2, 0x1

    .line 577
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setClickable(Z)V

    const/4 v2, 0x1

    .line 578
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setFocusable(Z)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setVisibility(I)V

    const/4 v2, 0x1

    .line 580
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setEnabled(Z)V

    .line 581
    return-void
.end method


# virtual methods
.method public needsDividerAfter()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public performClick()Z
    .locals 3

    .line 585
    invoke-super {p0}, Landroid/widget/ImageButton;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    const/4 v1, 0x1

    .line 591
    return v1

    .line 585
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->playSoundEffect(I)V

    .line 590
    iget-object v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    .line 590
    const/4 v1, 0x1

    return v1
.end method
