.class Landroid/support/v7/app/ActionBarImplHC$CallbackWrapper;
.super Ljava/lang/Object;
.source "ActionBarImplHC.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ActionBarImplHC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackWrapper"
.end annotation


# instance fields
.field private final mWrappedCallback:Landroid/view/ActionMode$Callback;

.field final synthetic this$0:Landroid/support/v7/app/ActionBarImplHC;


# direct methods
.method constructor <init>(Landroid/support/v7/app/ActionBarImplHC;Landroid/view/ActionMode$Callback;)V
    .locals 0

    .line 75
    iput-object p1, p0, Landroid/support/v7/app/ActionBarImplHC$CallbackWrapper;->this$0:Landroid/support/v7/app/ActionBarImplHC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p2, p0, Landroid/support/v7/app/ActionBarImplHC$CallbackWrapper;->mWrappedCallback:Landroid/view/ActionMode$Callback;

    .line 77
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2

    .line 98
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplHC$CallbackWrapper;->mWrappedCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    .line 81
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplHC$CallbackWrapper;->mWrappedCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    iget-object v2, p0, Landroid/support/v7/app/ActionBarImplHC$CallbackWrapper;->this$0:Landroid/support/v7/app/ActionBarImplHC;

    invoke-static {v2, p1}, Landroid/support/v7/app/ActionBarImplHC;->access$002(Landroid/support/v7/app/ActionBarImplHC;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 86
    iget-object v2, p0, Landroid/support/v7/app/ActionBarImplHC$CallbackWrapper;->this$0:Landroid/support/v7/app/ActionBarImplHC;

    invoke-virtual {v2}, Landroid/support/v7/app/ActionBarImplHC;->showForActionMode()V

    .line 88
    :cond_0
    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3

    .line 103
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplHC$CallbackWrapper;->mWrappedCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 106
    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplHC$CallbackWrapper;->this$0:Landroid/support/v7/app/ActionBarImplHC;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBarImplHC;->hideForActionMode()V

    .line 108
    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplHC$CallbackWrapper;->this$0:Landroid/support/v7/app/ActionBarImplHC;

    .line 108
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/support/v7/app/ActionBarImplHC;->access$002(Landroid/support/v7/app/ActionBarImplHC;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 109
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    .line 93
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplHC$CallbackWrapper;->mWrappedCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method
