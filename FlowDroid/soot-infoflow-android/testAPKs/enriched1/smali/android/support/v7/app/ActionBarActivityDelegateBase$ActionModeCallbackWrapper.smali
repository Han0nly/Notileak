.class Landroid/support/v7/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;
.super Ljava/lang/Object;
.source "ActionBarActivityDelegateBase.java"

# interfaces
.implements Landroid/support/v7/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ActionBarActivityDelegateBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallbackWrapper"
.end annotation


# instance fields
.field private mWrapped:Landroid/support/v7/view/ActionMode$Callback;

.field final synthetic this$0:Landroid/support/v7/app/ActionBarActivityDelegateBase;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/ActionBarActivityDelegateBase;Landroid/support/v7/view/ActionMode$Callback;)V
    .locals 0

    .line 668
    iput-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;->this$0:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 669
    iput-object p2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;->mWrapped:Landroid/support/v7/view/ActionMode$Callback;

    .line 670
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2

    .line 681
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;->mWrapped:Landroid/support/v7/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/ActionMode$Callback;->onActionItemClicked(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onCreateActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    .line 673
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;->mWrapped:Landroid/support/v7/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/ActionMode$Callback;->onCreateActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V
    .locals 4

    .line 685
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;->mWrapped:Landroid/support/v7/view/ActionMode$Callback;

    invoke-interface {v0, p1}, Landroid/support/v7/view/ActionMode$Callback;->onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V

    .line 686
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;->this$0:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    iget-object v2, v1, Landroid/support/v7/app/ActionBarActivityDelegate;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v2, p1}, Landroid/support/v7/app/ActionBarActivity;->onSupportActionModeFinished(Landroid/support/v7/view/ActionMode;)V

    .line 687
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;->this$0:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    .line 687
    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->access$002(Landroid/support/v7/app/ActionBarActivityDelegateBase;Landroid/support/v7/view/ActionMode;)Landroid/support/v7/view/ActionMode;

    .line 688
    return-void
.end method

.method public onPrepareActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    .line 677
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;->mWrapped:Landroid/support/v7/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/ActionMode$Callback;->onPrepareActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method
