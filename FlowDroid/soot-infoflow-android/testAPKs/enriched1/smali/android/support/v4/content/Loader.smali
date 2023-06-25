.class public Landroid/support/v4/content/Loader;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/Loader$OnLoadCompleteListener;,
        Landroid/support/v4/content/Loader$ForceLoadContentObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mAbandoned:Z

.field mContentChanged:Z

.field mContext:Landroid/content/Context;

.field mId:I

.field mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader$OnLoadCompleteListener",
            "<TD;>;"
        }
    .end annotation
.end field

.field mProcessingChange:Z

.field mReset:Z

.field mStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mStarted:Z

    .line 39
    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mAbandoned:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mReset:Z

    .line 41
    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mContentChanged:Z

    .line 42
    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mProcessingChange:Z

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/content/Loader;->mContext:Landroid/content/Context;

    .line 93
    return-void
.end method


# virtual methods
.method public abandon()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mAbandoned:Z

    .line 263
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->onAbandon()V

    .line 264
    return-void
.end method

.method public commitContentChanged()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mProcessingChange:Z

    .line 329
    return-void
.end method

.method public dataToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    .line 368
    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 369
    invoke-static {p1, v0}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 368
    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public deliverResult(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/content/Loader$OnLoadCompleteListener;->onLoadComplete(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    .line 106
    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 393
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Landroid/support/v4/content/Loader;->mId:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mListener="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 395
    iget-boolean v3, p0, Landroid/support/v4/content/Loader;->mStarted:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Landroid/support/v4/content/Loader;->mContentChanged:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Landroid/support/v4/content/Loader;->mProcessingChange:Z

    if-eqz v3, :cond_1

    .line 396
    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Landroid/support/v4/content/Loader;->mStarted:Z

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mContentChanged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Landroid/support/v4/content/Loader;->mContentChanged:Z

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mProcessingChange="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Landroid/support/v4/content/Loader;->mProcessingChange:Z

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 400
    :cond_1
    iget-boolean v3, p0, Landroid/support/v4/content/Loader;->mAbandoned:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Landroid/support/v4/content/Loader;->mReset:Z

    if-eqz v3, :cond_3

    .line 401
    :cond_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAbandoned="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Landroid/support/v4/content/Loader;->mAbandoned:Z

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mReset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Landroid/support/v4/content/Loader;->mReset:Z

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 404
    :cond_3
    return-void
.end method

.method public forceLoad()V
    .locals 0

    .line 218
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->onForceLoad()V

    .line 219
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 112
    iget-object v0, p0, Landroid/support/v4/content/Loader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 119
    iget v0, p0, Landroid/support/v4/content/Loader;->mId:I

    return v0
.end method

.method public isAbandoned()Z
    .locals 1

    .line 167
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mAbandoned:Z

    return v0
.end method

.method public isReset()Z
    .locals 1

    .line 176
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mReset:Z

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mStarted:Z

    return v0
.end method

.method protected onAbandon()V
    .locals 0

    .line 276
    return-void
.end method

.method public onContentChanged()V
    .locals 2

    .line 353
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mStarted:Z

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->forceLoad()V

    .line 361
    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->mContentChanged:Z

    goto :goto_0
.end method

.method protected onForceLoad()V
    .locals 0

    .line 226
    return-void
.end method

.method protected onReset()V
    .locals 0

    .line 306
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .line 207
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .line 254
    return-void
.end method

.method public registerListener(ILandroid/support/v4/content/Loader$OnLoadCompleteListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/support/v4/content/Loader$OnLoadCompleteListener",
            "<TD;>;)V"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    if-eqz v0, :cond_0

    .line 131
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 131
    const-string v2, "There is already a listener registered"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    :cond_0
    iput-object p2, p0, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    .line 134
    iput p1, p0, Landroid/support/v4/content/Loader;->mId:I

    .line 135
    return-void
.end method

.method public reset()V
    .locals 1

    .line 291
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->onReset()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mReset:Z

    .line 293
    const/4 v0, 0x0

    .line 293
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mStarted:Z

    .line 294
    const/4 v0, 0x0

    .line 294
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mAbandoned:Z

    .line 295
    const/4 v0, 0x0

    .line 295
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mContentChanged:Z

    .line 296
    const/4 v0, 0x0

    .line 296
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mProcessingChange:Z

    .line 297
    return-void
.end method

.method public rollbackContentChanged()V
    .locals 2

    .line 339
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mProcessingChange:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->mContentChanged:Z

    .line 342
    :cond_0
    return-void
.end method

.method public final startLoading()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mStarted:Z

    .line 196
    const/4 v0, 0x0

    .line 196
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mReset:Z

    .line 197
    const/4 v0, 0x0

    .line 197
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mAbandoned:Z

    .line 198
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->onStartLoading()V

    .line 199
    return-void
.end method

.method public stopLoading()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mStarted:Z

    .line 244
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->onStopLoading()V

    .line 245
    return-void
.end method

.method public takeContentChanged()Z
    .locals 3

    .line 314
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mContentChanged:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->mContentChanged:Z

    .line 316
    iget-boolean v2, p0, Landroid/support/v4/content/Loader;->mProcessingChange:Z

    or-int/2addr v2, v0

    iput-boolean v2, p0, Landroid/support/v4/content/Loader;->mProcessingChange:Z

    .line 317
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    .line 376
    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 377
    invoke-static {p0, v0}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 376
    const-string v2, " id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    iget v3, p0, Landroid/support/v4/content/Loader;->mId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 379
    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public unregisterListener(Landroid/support/v4/content/Loader$OnLoadCompleteListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader$OnLoadCompleteListener",
            "<TD;>;)V"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    if-nez v0, :cond_0

    .line 144
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 144
    const-string v2, "No listener register"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 146
    :cond_0
    iget-object v0, p0, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    if-eq v0, p1, :cond_1

    .line 147
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 147
    const-string v2, "Attempting to unregister the wrong listener"

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    .line 150
    return-void
.end method
