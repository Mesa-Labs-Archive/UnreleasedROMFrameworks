.class final Ljava/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;
.super Ljava/lang/Object;
.source "ForkJoinPool.java"

# interfaces
.implements Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ForkJoinPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InnocuousForkJoinWorkerThreadFactory"
.end annotation


# static fields
.field private static final innocuousAcc:Ljava/security/AccessControlContext;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/security/Permissions;

    invoke-direct {v0}, Ljava/security/Permissions;-><init>()V

    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->modifyThreadPermission:Ljava/lang/RuntimePermission;

    invoke-virtual {v0, v1}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    new-instance v1, Ljava/lang/RuntimePermission;

    const-string/jumbo v2, "enableContextClassLoaderOverride"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    new-instance v1, Ljava/lang/RuntimePermission;

    const-string/jumbo v2, "modifyThreadGroup"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    new-instance v1, Ljava/security/AccessControlContext;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/security/ProtectionDomain;

    new-instance v3, Ljava/security/ProtectionDomain;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Ljava/security/ProtectionDomain;-><init>(Ljava/security/CodeSource;Ljava/security/PermissionCollection;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {v1, v2}, Ljava/security/AccessControlContext;-><init>([Ljava/security/ProtectionDomain;)V

    sput-object v1, Ljava/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;->innocuousAcc:Ljava/security/AccessControlContext;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/util/concurrent/ForkJoinPool;)Ljava/util/concurrent/ForkJoinWorkerThread;
    .locals 2

    new-instance v0, Ljava/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory$1;

    invoke-direct {v0, p0, p1}, Ljava/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory$1;-><init>(Ljava/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;Ljava/util/concurrent/ForkJoinPool;)V

    sget-object v1, Ljava/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;->innocuousAcc:Ljava/security/AccessControlContext;

    invoke-static {v0, v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    return-object v0
.end method
