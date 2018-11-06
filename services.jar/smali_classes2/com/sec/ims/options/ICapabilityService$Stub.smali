.class public abstract Lcom/sec/ims/options/ICapabilityService$Stub;
.super Landroid/os/Binder;
.source "ICapabilityService.java"

# interfaces
.implements Lcom/sec/ims/options/ICapabilityService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/options/ICapabilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/options/ICapabilityService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.ims.options.ICapabilityService"

.field static final TRANSACTION_addFakeCapabilityInfo:I = 0xc

.field static final TRANSACTION_deRegisterService:I = 0x10

.field static final TRANSACTION_getAllCapabilities:I = 0x9

.field static final TRANSACTION_getCapabilities:I = 0x2

.field static final TRANSACTION_getCapabilitiesByContactId:I = 0x8

.field static final TRANSACTION_getCapabilitiesById:I = 0x3

.field static final TRANSACTION_getCapabilitiesByNumber:I = 0x4

.field static final TRANSACTION_getCapabilitiesWithDelay:I = 0x5

.field static final TRANSACTION_getCapabilitiesWithFeature:I = 0x6

.field static final TRANSACTION_getCapabilitiesWithFeatureByUriList:I = 0x7

.field static final TRANSACTION_getOwnCapabilities:I = 0x1

.field static final TRANSACTION_isOwnInfoPublished:I = 0xe

.field static final TRANSACTION_registerListener:I = 0xa

.field static final TRANSACTION_registerService:I = 0xf

.field static final TRANSACTION_setUserActivity:I = 0xd

.field static final TRANSACTION_unregisterListener:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.sec.ims.options.ICapabilityService"

    invoke-virtual {p0, p0, v0}, Lcom/sec/ims/options/ICapabilityService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/ims/options/ICapabilityService;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.sec.ims.options.ICapabilityService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/ims/options/ICapabilityService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/sec/ims/options/ICapabilityService;

    return-object v0

    :cond_1
    new-instance v1, Lcom/sec/ims/options/ICapabilityService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/ims/options/ICapabilityService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v18

    return v18

    :sswitch_0
    const-string/jumbo v18, "com.sec.ims.options.ICapabilityService"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v18, 0x1

    return v18

    :sswitch_1
    const-string/jumbo v18, "com.sec.ims.options.ICapabilityService"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/ims/options/ICapabilityService$Stub;->getOwnCapabilities(I)Lcom/sec/ims/options/Capabilities;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v15, :cond_0

    const/16 v18, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v18, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lcom/sec/ims/options/Capabilities;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    const/16 v18, 0x1

    return v18

    :cond_0
    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_2
    const-string/jumbo v18, "com.sec.ims.options.ICapabilityService"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_1

    sget-object v18, Lcom/sec/ims/util/ImsUri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/util/ImsUri;

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v10, v13}, Lcom/sec/ims/options/ICapabilityService$Stub;->getCapabilities(Lcom/sec/ims/util/ImsUri;II)Lcom/sec/ims/options/Capabilities;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v15, :cond_2

    const/16 v18, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v18, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lcom/sec/ims/options/Capabilities;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    const/16 v18, 0x1

    return v18

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :sswitch_3
    const-string/jumbo v18, "com.sec.ims.options.ICapabilityService"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10}, Lcom/sec/ims/options/ICapabilityService$Stub;->getCapabilitiesById(II)Lcom/sec/ims/options/Capabilities;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v15, :cond_3

    const/16 v18, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v18, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lcom/sec/ims/options/Capabilities;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3
    const/16 v18, 0x1

    return v18

    :cond_3
    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :sswitch_4
    const-string/jumbo v18, "com.sec.ims.options.ICapabilityService"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10, v13}, Lcom/sec/ims/options/ICapabilityService$Stub;->getCapabilitiesByNumber(Ljava/lang/String;II)Lcom/sec/ims/options/Capabilities;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v15, :cond_4

    const/16 v18, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v18, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lcom/sec/ims/options/Capabilities;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    const/16 v18, 0x1

    return v18

    :cond_4
    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    :sswitch_5
    const-string/jumbo v18, "com.sec.ims.options.ICapabilityService"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10, v13}, Lcom/sec/ims/options/ICapabilityService$Stub;->getCapabilitiesWithDelay(Ljava/lang/String;II)Lcom/sec/ims/options/Capabilities;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v15, :cond_5

    const/16 v18, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v18, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lcom/sec/ims/options/Capabilities;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_5
    const/16 v18, 0x1

    return v18

    :cond_5
    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    :sswitch_6
    const-string/jumbo v18, "com.sec.ims.options.ICapabilityService"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10, v13}, Lcom/sec/ims/options/ICapabilityService$Stub;->getCapabilitiesWithFeature(Ljava/lang/String;II)Lcom/sec/ims/options/Capabilities;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v15, :cond_6

    const/16 v18, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v18, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lcom/sec/ims/options/Capabilities;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_6
    const/16 v18, 0x1

    return v18

    :cond_6
    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    :sswitch_7
    const-string/jumbo v18, "com.sec.ims.options.ICapabilityService"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v18, Lcom/sec/ims/util/ImsUri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v10, v13, v14}, Lcom/sec/ims/options/ICapabilityService$Stub;->getCapabilitiesWithFeatureByUriList(Ljava/util/List;III)[Lcom/sec/ims/options/Capabilities;

    move-result-object v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v18, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/16 v18, 0x1

    return v18

    :sswitch_8
    const-string/jumbo v18, "com.sec.ims.options.ICapabilityService"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10, v13}, Lcom/sec/ims/options/ICapabilityService$Stub;->getCapabilitiesByContactId(Ljava/lang/String;II)[Lcom/sec/ims/options/Capabilities;

    move-result-object v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v18, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/16 v18, 0x1

    return v18

    :sswitch_9
    const-string/jumbo v18, "com.sec.ims.options.ICapabilityService"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/ims/options/ICapabilityService$Stub;->getAllCapabilities(I)[Lcom/sec/ims/options/Capabilities;

    move-result-object v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v18, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/16 v18, 0x1

    return v18

    :sswitch_a
    const-string/jumbo v18, "com.sec.ims.options.ICapabilityService"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/sec/ims/options/ICapabilityServiceEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/options/ICapabilityServiceEventListener;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v10}, Lcom/sec/ims/options/ICapabilityService$Stub;->registerListener(Lcom/sec/ims/options/ICapabilityServiceEventListener;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v18, 0x1

    return v18

    :sswitch_b
    const-string/jumbo v18, "com.sec.ims.options.ICapabilityService"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/sec/ims/options/ICapabilityServiceEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/options/ICapabilityServiceEventListener;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v10}, Lcom/sec/ims/options/ICapabilityService$Stub;->unregisterListener(Lcom/sec/ims/options/ICapabilityServiceEventListener;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v18, 0x1

    return v18

    :sswitch_c
    const-string/jumbo v18, "com.sec.ims.options.ICapabilityService"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v18, Lcom/sec/ims/util/ImsUri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_7

    const/4 v12, 0x1

    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v12, v13}, Lcom/sec/ims/options/ICapabilityService$Stub;->addFakeCapabilityInfo(Ljava/util/List;ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v18, 0x1

    return v18

    :cond_7
    const/4 v12, 0x0

    goto :goto_7

    :sswitch_d
    const-string/jumbo v18, "com.sec.ims.options.ICapabilityService"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_8

    const/4 v9, 0x1

    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sec/ims/options/ICapabilityService$Stub;->setUserActivity(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v18, 0x1

    return v18

    :cond_8
    const/4 v9, 0x0

    goto :goto_8

    :sswitch_e
    const-string/jumbo v18, "com.sec.ims.options.ICapabilityService"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/options/ICapabilityService$Stub;->isOwnInfoPublished()Z

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_9

    const/16 v18, 0x1

    :goto_9
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v18, 0x1

    return v18

    :cond_9
    const/16 v18, 0x0

    goto :goto_9

    :sswitch_f
    const-string/jumbo v18, "com.sec.ims.options.ICapabilityService"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v11}, Lcom/sec/ims/options/ICapabilityService$Stub;->registerService(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v18, 0x1

    return v18

    :sswitch_10
    const-string/jumbo v18, "com.sec.ims.options.ICapabilityService"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sec/ims/options/ICapabilityService$Stub;->deRegisterService(Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v18, 0x1

    return v18

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
