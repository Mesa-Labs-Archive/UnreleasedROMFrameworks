.class public Lsun/misc/SharedSecrets;
.super Ljava/lang/Object;
.source "SharedSecrets.java"


# static fields
.field private static javaIOFileDescriptorAccess:Lsun/misc/JavaIOFileDescriptorAccess;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getJavaIOFileDescriptorAccess()Lsun/misc/JavaIOFileDescriptorAccess;
    .locals 1

    sget-object v0, Lsun/misc/SharedSecrets;->javaIOFileDescriptorAccess:Lsun/misc/JavaIOFileDescriptorAccess;

    return-object v0
.end method

.method public static setJavaIOFileDescriptorAccess(Lsun/misc/JavaIOFileDescriptorAccess;)V
    .locals 0

    sput-object p0, Lsun/misc/SharedSecrets;->javaIOFileDescriptorAccess:Lsun/misc/JavaIOFileDescriptorAccess;

    return-void
.end method
