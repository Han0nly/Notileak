.class final Landroid/support/v4/app/BackStackState;
.super Ljava/lang/Object;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v4/app/BackStackState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mBreadCrumbShortTitleRes:I

.field final mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

.field final mBreadCrumbTitleRes:I

.field final mBreadCrumbTitleText:Ljava/lang/CharSequence;

.field final mIndex:I

.field final mName:Ljava/lang/String;

.field final mOps:[I

.field final mTransition:I

.field final mTransitionStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 157
    new-instance v0, Landroid/support/v4/app/BackStackState$1;

    invoke-direct {v0}, Landroid/support/v4/app/BackStackState$1;-><init>()V

    sput-object v0, Landroid/support/v4/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 8

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/support/v4/app/BackStackState;->mTransition:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/support/v4/app/BackStackState;->mTransitionStyle:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/app/BackStackState;->mName:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/support/v4/app/BackStackState;->mIndex:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleRes:I

    .line 90
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/CharSequence;

    move-object v5, v6

    iput-object v5, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleRes:I

    .line 92
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/lang/CharSequence;

    move-object v5, v7

    iput-object v5, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentManagerImpl;Landroid/support/v4/app/BackStackRecord;)V
    .locals 19

    move-object/from16 v0, p0

    .line 40
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v2, 0x0

    move-object/from16 v0, p2

    .line 42
    iget-object v3, v0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    :goto_0
    if-eqz v3, :cond_1

    .line 44
    iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v2, v5

    .line 45
    :cond_0
    iget-object v3, v3, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;

    goto :goto_0

    :cond_1
    move-object/from16 v0, p2

    .line 47
    iget v5, v0, Landroid/support/v4/app/BackStackRecord;->mNumOp:I

    mul-int/lit8 v5, v5, 0x7

    add-int v2, v5, v2

    new-array v6, v2, [I

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/support/v4/app/BackStackState;->mOps:[I

    move-object/from16 v0, p2

    .line 49
    iget-boolean v7, v0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-nez v7, :cond_2

    .line 50
    new-instance v8, Ljava/lang/IllegalStateException;

    .line 50
    const-string v9, "Not on back stack"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_2
    move-object/from16 v0, p2

    .line 53
    iget-object v3, v0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    .line 54
    const/4 v2, 0x0

    :goto_1
    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    .line 56
    iget-object v6, v0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v2, 0x1

    iget v10, v3, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    aput v10, v6, v2

    move-object/from16 v0, p0

    .line 57
    iget-object v6, v0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v10, v5, 0x1

    iget-object v11, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    if-eqz v11, :cond_3

    iget-object v11, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    iget v2, v11, Landroid/support/v4/app/Fragment;->mIndex:I

    :goto_2
    aput v2, v6, v5

    move-object/from16 v0, p0

    .line 58
    iget-object v6, v0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v2, v10, 0x1

    iget v5, v3, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    aput v5, v6, v10

    move-object/from16 v0, p0

    .line 59
    iget-object v6, v0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v10, v2, 0x1

    iget v5, v3, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    aput v5, v6, v2

    move-object/from16 v0, p0

    .line 60
    iget-object v6, v0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v2, v10, 0x1

    iget v5, v3, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    aput v5, v6, v10

    move-object/from16 v0, p0

    .line 61
    iget-object v6, v0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v10, v2, 0x1

    iget v5, v3, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    aput v5, v6, v2

    .line 62
    iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    .line 63
    iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move-object/from16 v0, p0

    .line 64
    iget-object v6, v0, Landroid/support/v4/app/BackStackState;->mOps:[I

    aput v5, v6, v10

    .line 65
    const/4 v2, 0x0

    add-int/lit8 v12, v10, 0x1

    :goto_3
    if-ge v2, v5, :cond_4

    move-object/from16 v0, p0

    .line 66
    iget-object v6, v0, Landroid/support/v4/app/BackStackState;->mOps:[I

    iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Landroid/support/v4/app/Fragment;

    move-object v11, v14

    iget v15, v11, Landroid/support/v4/app/Fragment;->mIndex:I

    aput v15, v6, v12

    .line 65
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 57
    :cond_3
    const/4 v2, -0x1

    goto :goto_2

    :cond_4
    move/from16 v15, v12

    .line 71
    :goto_4
    iget-object v3, v3, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;

    move/from16 v2, v15

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    .line 69
    iget-object v6, v0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v15, v10, 0x1

    const/16 v16, 0x0

    aput v16, v6, v10

    goto :goto_4

    :cond_6
    move-object/from16 v0, p2

    .line 73
    iget v15, v0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/v4/app/BackStackState;->mTransition:I

    move-object/from16 v0, p2

    .line 74
    iget v15, v0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/v4/app/BackStackState;->mTransitionStyle:I

    move-object/from16 v0, p2

    .line 75
    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v4/app/BackStackState;->mName:Ljava/lang/String;

    move-object/from16 v0, p2

    .line 76
    iget v15, v0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/v4/app/BackStackState;->mIndex:I

    move-object/from16 v0, p2

    .line 77
    iget v15, v0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleRes:I

    move-object/from16 v0, p2

    .line 78
    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    move-object/from16 v0, p2

    .line 79
    iget v15, v0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleRes:I

    move-object/from16 v0, p2

    .line 80
    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 81
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public instantiate(Landroid/support/v4/app/FragmentManagerImpl;)Landroid/support/v4/app/BackStackRecord;
    .locals 22

    .line 96
    new-instance v1, Landroid/support/v4/app/BackStackRecord;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Landroid/support/v4/app/BackStackRecord;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V

    .line 97
    const/4 v2, 0x0

    .line 98
    const/4 v3, 0x0

    :goto_0
    move-object/from16 v0, p0

    .line 99
    iget-object v4, v0, Landroid/support/v4/app/BackStackState;->mOps:[I

    array-length v5, v4

    if-ge v2, v5, :cond_4

    .line 100
    new-instance v6, Landroid/support/v4/app/BackStackRecord$Op;

    invoke-direct {v6}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    move-object/from16 v0, p0

    .line 101
    iget-object v4, v0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v2, 0x1

    aget v2, v4, v2

    iput v2, v6, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    .line 102
    sget-boolean v7, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Instantiate "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " op #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " base fragment #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/app/BackStackState;->mOps:[I

    aget v2, v4, v5

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v9, "FragmentManager"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    .line 104
    iget-object v4, v0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v2, v5, 0x1

    aget v5, v4, v5

    if-ltz v5, :cond_2

    move-object/from16 v0, p1

    .line 106
    iget-object v11, v0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v14, v12

    check-cast v14, Landroid/support/v4/app/Fragment;

    move-object v13, v14

    .line 107
    iput-object v13, v6, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    :goto_1
    move-object/from16 v0, p0

    .line 111
    iget-object v4, v0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v2, 0x1

    aget v2, v4, v2

    iput v2, v6, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    move-object/from16 v0, p0

    .line 112
    iget-object v4, v0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v2, v5, 0x1

    aget v5, v4, v5

    iput v5, v6, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    move-object/from16 v0, p0

    .line 113
    iget-object v4, v0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v2, 0x1

    aget v2, v4, v2

    iput v2, v6, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    move-object/from16 v0, p0

    .line 114
    iget-object v4, v0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v2, v5, 0x1

    aget v5, v4, v5

    iput v5, v6, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    move-object/from16 v0, p0

    .line 115
    iget-object v4, v0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v15, v2, 0x1

    aget v5, v4, v2

    if-lez v5, :cond_3

    .line 117
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v11, v6, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    .line 118
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v5, :cond_3

    .line 119
    sget-boolean v7, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Instantiate "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " set remove fragment #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/app/BackStackState;->mOps:[I

    aget v16, v4, v15

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v9, "FragmentManager"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v0, p1

    .line 121
    iget-object v11, v0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v16, v15, 0x1

    aget v15, v4, v15

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v17, v12

    check-cast v17, Landroid/support/v4/app/Fragment;

    move-object/from16 v13, v17

    .line 122
    iget-object v11, v6, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    add-int/lit8 v2, v2, 0x1

    move/from16 v15, v16

    goto :goto_2

    :cond_2
    const/16 v18, 0x0

    move-object/from16 v0, v18

    iput-object v0, v6, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    goto/16 :goto_1

    :cond_3
    move/from16 v2, v15

    .line 125
    invoke-virtual {v1, v6}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 126
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    .line 128
    iget v0, v0, Landroid/support/v4/app/BackStackState;->mTransition:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v1, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    move-object/from16 v0, p0

    .line 129
    iget v0, v0, Landroid/support/v4/app/BackStackState;->mTransitionStyle:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v1, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    move-object/from16 v0, p0

    .line 130
    iget-object v0, v0, Landroid/support/v4/app/BackStackState;->mName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v1, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    move-object/from16 v0, p0

    .line 131
    iget v0, v0, Landroid/support/v4/app/BackStackState;->mIndex:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v1, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    const/16 v20, 0x1

    move/from16 v0, v20

    .line 132
    iput-boolean v0, v1, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    move-object/from16 v0, p0

    .line 133
    iget v0, v0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleRes:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    move-object/from16 v0, p0

    .line 134
    iget-object v0, v0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-object v0, v1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    .line 135
    iget v0, v0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleRes:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    move-object/from16 v0, p0

    .line 136
    iget-object v0, v0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-object v0, v1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    const/16 v20, 0x1

    move/from16 v16, v20

    move/from16 v0, v16

    .line 137
    invoke-virtual {v1, v0}, Landroid/support/v4/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 138
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 146
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 147
    iget p2, p0, Landroid/support/v4/app/BackStackState;->mTransition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget p2, p0, Landroid/support/v4/app/BackStackState;->mTransitionStyle:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->mName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget p2, p0, Landroid/support/v4/app/BackStackState;->mIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget p2, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleRes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget-object v2, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 152
    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 153
    iget p2, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleRes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget-object v2, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 154
    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 155
    return-void
.end method
