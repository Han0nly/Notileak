.class Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;
.super Landroid/support/v7/view/ActionMode;
.source "ActionBarImplBase.java"

# interfaces
.implements Landroid/support/v7/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ActionBarImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionModeImpl"
.end annotation


# instance fields
.field private mCallback:Landroid/support/v7/view/ActionMode$Callback;

.field private mCustomView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

.field final synthetic this$0:Landroid/support/v7/app/ActionBarImplBase;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/ActionBarImplBase;Landroid/support/v7/view/ActionMode$Callback;)V
    .locals 3

    .line 756
    iput-object p1, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    invoke-direct {p0}, Landroid/support/v7/view/ActionMode;-><init>()V

    .line 757
    iput-object p2, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->mCallback:Landroid/support/v7/view/ActionMode$Callback;

    .line 758
    new-instance v0, Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {p1}, Landroid/support/v7/app/ActionBarImplBase;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/view/menu/MenuBuilder;->setDefaultShowAsAction(I)Landroid/support/v7/internal/view/menu/MenuBuilder;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    .line 760
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->setCallback(Landroid/support/v7/internal/view/menu/MenuBuilder$Callback;)V

    .line 761
    return-void
.end method


# virtual methods
.method public dispatchOnCreate()Z
    .locals 4

    .line 813
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 815
    :try_start_0
    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->mCallback:Landroid/support/v7/view/ActionMode$Callback;

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-interface {v1, p0, v0}, Landroid/support/v7/view/ActionMode$Callback;->onCreateActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 817
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    return v2

    :catch_0
    move-exception v3

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    throw v3
.end method

.method public finish()V
    .locals 9

    .line 775
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    iget-object v1, v0, Landroid/support/v7/app/ActionBarImplBase;->mActionMode:Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;

    if-eq v1, p0, :cond_0

    .line 800
    :goto_0
    return-void

    .line 784
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->access$200(Landroid/support/v7/app/ActionBarImplBase;)Z

    move-result v2

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->access$300(Landroid/support/v7/app/ActionBarImplBase;)Z

    move-result v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/support/v7/app/ActionBarImplBase;->access$400(ZZZ)Z

    move-result v3

    if-nez v3, :cond_1

    .line 787
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    iput-object p0, v0, Landroid/support/v7/app/ActionBarImplBase;->mDeferredDestroyActionMode:Landroid/support/v7/view/ActionMode;

    .line 788
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    iget-object v5, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->mCallback:Landroid/support/v7/view/ActionMode$Callback;

    iput-object v5, v0, Landroid/support/v7/app/ActionBarImplBase;->mDeferredModeDestroyCallback:Landroid/support/v7/view/ActionMode$Callback;

    .line 792
    :goto_1
    const/4 v6, 0x0

    .line 792
    iput-object v6, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->mCallback:Landroid/support/v7/view/ActionMode$Callback;

    .line 793
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    .line 793
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBarImplBase;->animateToMode(Z)V

    .line 796
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->access$500(Landroid/support/v7/app/ActionBarImplBase;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v7/internal/widget/ActionBarContextView;->closeMode()V

    .line 797
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->access$600(Landroid/support/v7/app/ActionBarImplBase;)Landroid/support/v7/internal/widget/ActionBarView;

    move-result-object v8

    const/16 v4, 0x20

    invoke-virtual {v8, v4}, Landroid/support/v7/internal/widget/ActionBarView;->sendAccessibilityEvent(I)V

    .line 799
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    const/4 v6, 0x0

    iput-object v6, v0, Landroid/support/v7/app/ActionBarImplBase;->mActionMode:Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;

    goto :goto_0

    .line 790
    :cond_1
    iget-object v5, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->mCallback:Landroid/support/v7/view/ActionMode$Callback;

    invoke-interface {v5, p0}, Landroid/support/v7/view/ActionMode$Callback;->onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V

    goto :goto_1
.end method

.method public getCustomView()Landroid/view/View;
    .locals 5

    .line 870
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/view/View;

    move-object v2, v3

    return-object v2

    :cond_0
    const/4 v4, 0x0

    return-object v4
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .line 770
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 3

    .line 765
    new-instance v0, Landroid/support/v7/internal/view/SupportMenuInflater;

    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBarImplBase;->getThemedContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v7/internal/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 3

    .line 854
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->access$500(Landroid/support/v7/app/ActionBarImplBase;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 3

    .line 849
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->access$500(Landroid/support/v7/app/ActionBarImplBase;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method public invalidate()V
    .locals 3

    .line 804
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 806
    :try_start_0
    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->mCallback:Landroid/support/v7/view/ActionMode$Callback;

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-interface {v1, p0, v0}, Landroid/support/v7/view/ActionMode$Callback;->onPrepareActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 808
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 810
    return-void

    .line 808
    :catch_0
    move-exception v2

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    throw v2
.end method

.method public isTitleOptional()Z
    .locals 3

    .line 865
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->access$500(Landroid/support/v7/app/ActionBarImplBase;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->isTitleOptional()Z

    move-result v2

    return v2
.end method

.method public onCloseMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V
    .locals 0

    .line 891
    return-void
.end method

.method public onCloseSubMenu(Landroid/support/v7/internal/view/menu/SubMenuBuilder;)V
    .locals 0

    .line 907
    return-void
.end method

.method public onMenuItemSelected(Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 3

    .line 874
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->mCallback:Landroid/support/v7/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->mCallback:Landroid/support/v7/view/ActionMode$Callback;

    invoke-interface {v0, p0, p2}, Landroid/support/v7/view/ActionMode$Callback;->onActionItemClicked(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v1

    .line 877
    return v1

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public onMenuModeChange(Landroid/support/v7/internal/view/menu/MenuBuilder;)V
    .locals 3

    .line 883
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->mCallback:Landroid/support/v7/view/ActionMode$Callback;

    if-nez v0, :cond_0

    .line 888
    :goto_0
    return-void

    .line 886
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->invalidate()V

    .line 887
    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    invoke-static {v1}, Landroid/support/v7/app/ActionBarImplBase;->access$500(Landroid/support/v7/app/ActionBarImplBase;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->showOverflowMenu()Z

    goto :goto_0
.end method

.method public onMenuModeChange(Landroid/view/Menu;)V
    .locals 3

    .line 910
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->mCallback:Landroid/support/v7/view/ActionMode$Callback;

    if-nez v0, :cond_0

    .line 915
    :goto_0
    return-void

    .line 913
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->invalidate()V

    .line 914
    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    invoke-static {v1}, Landroid/support/v7/app/ActionBarImplBase;->access$500(Landroid/support/v7/app/ActionBarImplBase;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->showOverflowMenu()Z

    goto :goto_0
.end method

.method public onSubMenuSelected(Landroid/support/v7/internal/view/menu/SubMenuBuilder;)Z
    .locals 4

    const/4 v0, 0x1

    .line 894
    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->mCallback:Landroid/support/v7/view/ActionMode$Callback;

    if-nez v1, :cond_1

    .line 895
    const/4 v0, 0x0

    .line 903
    :cond_0
    return v0

    .line 898
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v2

    if-nez v2, :cond_0

    .line 898
    const/4 v3, 0x1

    return v3
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 3

    .line 823
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->access$500(Landroid/support/v7/app/ActionBarImplBase;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    .line 824
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    .line 825
    return-void
.end method

.method public setSubtitle(I)V
    .locals 4

    .line 844
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->access$100(Landroid/support/v7/app/ActionBarImplBase;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 845
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 2

    .line 829
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->access$500(Landroid/support/v7/app/ActionBarImplBase;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 830
    return-void
.end method

.method public setTitle(I)V
    .locals 4

    .line 839
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->access$100(Landroid/support/v7/app/ActionBarImplBase;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->setTitle(Ljava/lang/CharSequence;)V

    .line 840
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    .line 834
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->access$500(Landroid/support/v7/app/ActionBarImplBase;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 835
    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .locals 2

    .line 859
    invoke-super {p0, p1}, Landroid/support/v7/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 860
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->this$0:Landroid/support/v7/app/ActionBarImplBase;

    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->access$500(Landroid/support/v7/app/ActionBarImplBase;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setTitleOptional(Z)V

    .line 861
    return-void
.end method
