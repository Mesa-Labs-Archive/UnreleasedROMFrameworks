.class public Ljava/util/logging/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/logging/Logger$LoggerBundle;,
        Ljava/util/logging/Logger$SystemLoggerHelper;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final GLOBAL_LOGGER_NAME:Ljava/lang/String; = "global"

.field private static final NO_RESOURCE_BUNDLE:Ljava/util/logging/Logger$LoggerBundle;

.field private static final SYSTEM_BUNDLE:Ljava/util/logging/Logger$LoggerBundle;

.field static final SYSTEM_LOGGER_RB_NAME:Ljava/lang/String; = "sun.util.logging.resources.logging"

.field private static final emptyHandlers:[Ljava/util/logging/Handler;

.field public static final global:Ljava/util/logging/Logger;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final offValue:I

.field private static final treeLock:Ljava/lang/Object;


# instance fields
.field private anonymous:Z

.field private callersClassLoaderRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private catalog:Ljava/util/ResourceBundle;

.field private catalogLocale:Ljava/util/Locale;

.field private catalogName:Ljava/lang/String;

.field private volatile filter:Ljava/util/logging/Filter;

.field private final handlers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/util/logging/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final isSystemLogger:Z

.field private kids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/logging/LogManager$LoggerWeakRef;",
            ">;"
        }
    .end annotation
.end field

.field private volatile levelObject:Ljava/util/logging/Level;

.field private volatile levelValue:I

.field private volatile loggerBundle:Ljava/util/logging/Logger$LoggerBundle;

.field private volatile manager:Ljava/util/logging/LogManager;

.field private name:Ljava/lang/String;

.field private volatile parent:Ljava/util/logging/Logger;

.field private volatile useParentHandlers:Z


# direct methods
.method static synthetic -get0()Ljava/util/logging/Logger$LoggerBundle;
    .locals 1

    sget-object v0, Ljava/util/logging/Logger;->NO_RESOURCE_BUNDLE:Ljava/util/logging/Logger$LoggerBundle;

    return-object v0
.end method

.method static synthetic -get1()Ljava/util/logging/Logger$LoggerBundle;
    .locals 1

    sget-object v0, Ljava/util/logging/Logger;->SYSTEM_BUNDLE:Ljava/util/logging/Logger$LoggerBundle;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-class v0, Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/util/logging/Logger;->-assertionsDisabled:Z

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/logging/Handler;

    sput-object v0, Ljava/util/logging/Logger;->emptyHandlers:[Ljava/util/logging/Handler;

    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    sput v0, Ljava/util/logging/Logger;->offValue:I

    new-instance v0, Ljava/util/logging/Logger$LoggerBundle;

    const-string/jumbo v1, "sun.util.logging.resources.logging"

    invoke-direct {v0, v1, v2, v2}, Ljava/util/logging/Logger$LoggerBundle;-><init>(Ljava/lang/String;Ljava/util/ResourceBundle;Ljava/util/logging/Logger$LoggerBundle;)V

    sput-object v0, Ljava/util/logging/Logger;->SYSTEM_BUNDLE:Ljava/util/logging/Logger$LoggerBundle;

    new-instance v0, Ljava/util/logging/Logger$LoggerBundle;

    invoke-direct {v0, v2, v2, v2}, Ljava/util/logging/Logger$LoggerBundle;-><init>(Ljava/lang/String;Ljava/util/ResourceBundle;Ljava/util/logging/Logger$LoggerBundle;)V

    sput-object v0, Ljava/util/logging/Logger;->NO_RESOURCE_BUNDLE:Ljava/util/logging/Logger$LoggerBundle;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/util/logging/Logger;->treeLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/logging/Logger;

    const-string/jumbo v1, "global"

    invoke-direct {v0, v1}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    sget-object v0, Ljava/util/logging/Logger;->NO_RESOURCE_BUNDLE:Ljava/util/logging/Logger$LoggerBundle;

    iput-object v0, p0, Ljava/util/logging/Logger;->loggerBundle:Ljava/util/logging/Logger$LoggerBundle;

    iput-boolean v1, p0, Ljava/util/logging/Logger;->useParentHandlers:Z

    iput-object p1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    iput-boolean v1, p0, Ljava/util/logging/Logger;->isSystemLogger:Z

    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    iput v0, p0, Ljava/util/logging/Logger;->levelValue:I

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/util/logging/LogManager;Z)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/util/logging/LogManager;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/logging/LogManager;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    sget-object v0, Ljava/util/logging/Logger;->NO_RESOURCE_BUNDLE:Ljava/util/logging/Logger$LoggerBundle;

    iput-object v0, p0, Ljava/util/logging/Logger;->loggerBundle:Ljava/util/logging/Logger$LoggerBundle;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/logging/Logger;->useParentHandlers:Z

    iput-object p4, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    iput-boolean p5, p0, Ljava/util/logging/Logger;->isSystemLogger:Z

    invoke-direct {p0, p2, p3}, Ljava/util/logging/Logger;->setupResourceInfo(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    iput v0, p0, Ljava/util/logging/Logger;->levelValue:I

    return-void
.end method

.method private checkPermission()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/util/logging/Logger;->anonymous:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    iput-object v0, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    :cond_0
    iget-object v0, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkPermission()V

    :cond_1
    return-void
.end method

.method private static demandLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/logging/Logger;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/logging/Logger;"
        }
    .end annotation

    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-boolean v2, Ljava/util/logging/Logger$SystemLoggerHelper;->disableCallerCheck:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v0, p0, p1}, Ljava/util/logging/LogManager;->demandSystemLogger(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-virtual {v0, p0, p1, p2}, Ljava/util/logging/LogManager;->demandLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v2

    return-object v2
.end method

.method private doLog(Ljava/util/logging/LogRecord;)V
    .locals 4

    iget-object v3, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/util/logging/Logger;->getEffectiveLoggerBundle()Ljava/util/logging/Logger$LoggerBundle;

    move-result-object v2

    iget-object v0, v2, Ljava/util/logging/Logger$LoggerBundle;->userBundle:Ljava/util/ResourceBundle;

    iget-object v1, v2, Ljava/util/logging/Logger$LoggerBundle;->resourceBundleName:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/logging/LogRecord;->setResourceBundleName(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/logging/LogRecord;->setResourceBundle(Ljava/util/ResourceBundle;)V

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    return-void
.end method

.method private doLog(Ljava/util/logging/LogRecord;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/logging/LogRecord;->setResourceBundleName(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Ljava/util/logging/Logger;->findResourceBundle(Ljava/lang/String;Z)Ljava/util/ResourceBundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/LogRecord;->setResourceBundle(Ljava/util/ResourceBundle;)V

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    return-void
.end method

.method private doLog(Ljava/util/logging/LogRecord;Ljava/util/ResourceBundle;)V
    .locals 1

    iget-object v0, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ResourceBundle;->getBaseBundleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/LogRecord;->setResourceBundleName(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/util/logging/LogRecord;->setResourceBundle(Ljava/util/ResourceBundle;)V

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    return-void
.end method

.method private doSetParent(Ljava/util/logging/Logger;)V
    .locals 9

    sget-object v6, Ljava/util/logging/Logger;->treeLock:Ljava/lang/Object;

    monitor-enter v6

    const/4 v3, 0x0

    :try_start_0
    iget-object v5, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    if-eqz v5, :cond_3

    iget-object v5, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    iget-object v5, v5, Ljava/util/logging/Logger;->kids:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/logging/LogManager$LoggerWeakRef;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/logging/LogManager$LoggerWeakRef;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/logging/Logger;

    if-ne v2, p0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    :goto_1
    :try_start_1
    iput-object p1, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    iget-object v5, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    iget-object v5, v5, Ljava/util/logging/Logger;->kids:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    iget-object v5, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    new-instance v7, Ljava/util/ArrayList;

    const/4 v8, 0x2

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, v5, Ljava/util/logging/Logger;->kids:Ljava/util/ArrayList;

    :cond_0
    if-nez v4, :cond_2

    new-instance v3, Ljava/util/logging/LogManager$LoggerWeakRef;

    iget-object v5, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v5, p0}, Ljava/util/logging/LogManager$LoggerWeakRef;-><init>(Ljava/util/logging/LogManager;Ljava/util/logging/Logger;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    :try_start_2
    new-instance v5, Ljava/lang/ref/WeakReference;

    iget-object v7, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    invoke-direct {v5, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Ljava/util/logging/LogManager$LoggerWeakRef;->setParentRef(Ljava/lang/ref/WeakReference;)V

    iget-object v5, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    iget-object v5, v5, Ljava/util/logging/Logger;->kids:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Ljava/util/logging/Logger;->updateEffectiveLevel()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v6

    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :catchall_0
    move-exception v5

    :goto_3
    monitor-exit v6

    throw v5

    :catchall_1
    move-exception v5

    move-object v3, v4

    goto :goto_3

    :cond_2
    move-object v3, v4

    goto :goto_2

    :cond_3
    move-object v4, v3

    goto :goto_1
.end method

.method private declared-synchronized findResourceBundle(Ljava/lang/String;Z)Ljava/util/ResourceBundle;
    .locals 7

    const/4 v6, 0x0

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-object v6

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    iget-object v4, p0, Ljava/util/logging/Logger;->loggerBundle:Ljava/util/logging/Logger$LoggerBundle;

    iget-object v5, v4, Ljava/util/logging/Logger$LoggerBundle;->userBundle:Ljava/util/ResourceBundle;

    if-eqz v5, :cond_1

    iget-object v5, v4, Ljava/util/logging/Logger$LoggerBundle;->resourceBundleName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v4, Ljava/util/logging/Logger$LoggerBundle;->userBundle:Ljava/util/ResourceBundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v5

    :cond_1
    :try_start_1
    iget-object v5, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;

    if-eqz v5, :cond_2

    iget-object v5, p0, Ljava/util/logging/Logger;->catalogLocale:Ljava/util/Locale;

    invoke-virtual {v2, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Ljava/util/logging/Logger;->catalogName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v5

    :cond_2
    :try_start_2
    const-string/jumbo v5, "sun.util.logging.resources.logging"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v2}, Ljava/util/logging/Logger;->findSystemResourceBundle(Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v5

    iput-object v5, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;

    iput-object p1, p0, Ljava/util/logging/Logger;->catalogName:Ljava/lang/String;

    iput-object v2, p0, Ljava/util/logging/Logger;->catalogLocale:Ljava/util/Locale;

    iget-object v5, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v5

    :cond_3
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    :cond_4
    :try_start_4
    invoke-static {p1, v2, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v5

    iput-object v5, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;

    iput-object p1, p0, Ljava/util/logging/Logger;->catalogName:Ljava/lang/String;

    iput-object v2, p0, Ljava/util/logging/Logger;->catalogLocale:Ljava/util/Locale;

    iget-object v5, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;
    :try_end_4
    .catch Ljava/util/MissingResourceException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v5

    :catch_0
    move-exception v3

    if-eqz p2, :cond_7

    :try_start_5
    invoke-direct {p0}, Ljava/util/logging/Logger;->getCallersClassLoader()Ljava/lang/ClassLoader;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_5

    if-ne v0, v1, :cond_6

    :cond_5
    monitor-exit p0

    return-object v6

    :cond_6
    :try_start_6
    invoke-static {p1, v2, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v5

    iput-object v5, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;

    iput-object p1, p0, Ljava/util/logging/Logger;->catalogName:Ljava/lang/String;

    iput-object v2, p0, Ljava/util/logging/Logger;->catalogLocale:Ljava/util/Locale;

    iget-object v5, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;
    :try_end_6
    .catch Ljava/util/MissingResourceException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v5

    :catch_1
    move-exception v3

    monitor-exit p0

    return-object v6

    :cond_7
    monitor-exit p0

    return-object v6

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private static findSystemResourceBundle(Ljava/util/Locale;)Ljava/util/ResourceBundle;
    .locals 1

    new-instance v0, Ljava/util/logging/Logger$1;

    invoke-direct {v0, p0}, Ljava/util/logging/Logger$1;-><init>(Ljava/util/Locale;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ResourceBundle;

    return-object v0
.end method

.method public static getAnonymousLogger()Ljava/util/logging/Logger;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/logging/Logger;->getAnonymousLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getAnonymousLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
    .locals 7
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/logging/LogManager;->drainLoggerRefQueueBounded()V

    new-instance v0, Ljava/util/logging/Logger;

    invoke-static {}, Ldalvik/system/VMStack;->getStackClass1()Ljava/lang/Class;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/util/logging/LogManager;Z)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Ljava/util/logging/Logger;->anonymous:Z

    const-string/jumbo v1, ""

    invoke-virtual {v4, v1}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/util/logging/Logger;->doSetParent(Ljava/util/logging/Logger;)V

    return-object v0
.end method

.method private getCallersClassLoader()Ljava/lang/ClassLoader;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Ljava/util/logging/Logger;->callersClassLoaderRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v0, p0, Ljava/util/logging/Logger;->callersClassLoaderRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    :cond_0
    return-object v0
.end method

.method private getEffectiveLoggerBundle()Ljava/util/logging/Logger$LoggerBundle;
    .locals 6

    iget-object v1, p0, Ljava/util/logging/Logger;->loggerBundle:Ljava/util/logging/Logger$LoggerBundle;

    invoke-virtual {v1}, Ljava/util/logging/Logger$LoggerBundle;->isSystemBundle()Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Ljava/util/logging/Logger;->SYSTEM_BUNDLE:Ljava/util/logging/Logger$LoggerBundle;

    return-object v5

    :cond_0
    invoke-virtual {p0}, Ljava/util/logging/Logger;->getResourceBundle()Ljava/util/ResourceBundle;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v5, v1, Ljava/util/logging/Logger$LoggerBundle;->userBundle:Ljava/util/ResourceBundle;

    if-ne v0, v5, :cond_1

    return-object v1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/util/logging/Logger;->getResourceBundleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/util/logging/Logger$LoggerBundle;->get(Ljava/lang/String;Ljava/util/ResourceBundle;)Ljava/util/logging/Logger$LoggerBundle;

    move-result-object v5

    return-object v5

    :cond_2
    iget-object v3, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    :goto_0
    if-eqz v3, :cond_9

    iget-object v4, v3, Ljava/util/logging/Logger;->loggerBundle:Ljava/util/logging/Logger$LoggerBundle;

    invoke-virtual {v4}, Ljava/util/logging/Logger$LoggerBundle;->isSystemBundle()Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Ljava/util/logging/Logger;->SYSTEM_BUNDLE:Ljava/util/logging/Logger$LoggerBundle;

    return-object v5

    :cond_3
    iget-object v5, v4, Ljava/util/logging/Logger$LoggerBundle;->userBundle:Ljava/util/ResourceBundle;

    if-eqz v5, :cond_4

    return-object v4

    :cond_4
    iget-boolean v5, p0, Ljava/util/logging/Logger;->isSystemLogger:Z

    if-eqz v5, :cond_6

    iget-boolean v5, v3, Ljava/util/logging/Logger;->isSystemLogger:Z

    if-eqz v5, :cond_5

    iget-object v2, v4, Ljava/util/logging/Logger$LoggerBundle;->resourceBundleName:Ljava/lang/String;

    :goto_1
    if-eqz v2, :cond_7

    const/4 v5, 0x1

    invoke-direct {p0, v2, v5}, Ljava/util/logging/Logger;->findResourceBundle(Ljava/lang/String;Z)Ljava/util/ResourceBundle;

    move-result-object v5

    invoke-static {v2, v5}, Ljava/util/logging/Logger$LoggerBundle;->get(Ljava/lang/String;Ljava/util/ResourceBundle;)Ljava/util/logging/Logger$LoggerBundle;

    move-result-object v5

    return-object v5

    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    invoke-virtual {v3}, Ljava/util/logging/Logger;->getResourceBundleName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_7
    iget-boolean v5, p0, Ljava/util/logging/Logger;->isSystemLogger:Z

    if-eqz v5, :cond_8

    iget-object v3, v3, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    goto :goto_0

    :cond_8
    invoke-virtual {v3}, Ljava/util/logging/Logger;->getParent()Ljava/util/logging/Logger;

    move-result-object v3

    goto :goto_0

    :cond_9
    sget-object v5, Ljava/util/logging/Logger;->NO_RESOURCE_BUNDLE:Ljava/util/logging/Logger$LoggerBundle;

    return-object v5
.end method

.method public static final getGlobal()Ljava/util/logging/Logger;
    .locals 1

    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    sget-object v0, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
    .locals 2
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    invoke-static {}, Ldalvik/system/VMStack;->getStackClass1()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/util/logging/Logger;->demandLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;
    .locals 2
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    invoke-static {}, Ldalvik/system/VMStack;->getStackClass1()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, p1, v0}, Ljava/util/logging/Logger;->demandLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v1

    invoke-direct {v1, p1, v0}, Ljava/util/logging/Logger;->setupResourceInfo(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v1
.end method

.method static getPlatformLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
    .locals 3

    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    const-string/jumbo v2, "sun.util.logging.resources.logging"

    invoke-virtual {v0, p0, v2}, Ljava/util/logging/LogManager;->demandSystemLogger(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    return-object v1
.end method

.method private setCallersClassLoaderRef(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Ljava/util/logging/Logger;->callersClassLoaderRef:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized setupResourceInfo(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/util/logging/Logger;->loggerBundle:Ljava/util/logging/Logger$LoggerBundle;

    iget-object v1, v0, Ljava/util/logging/Logger$LoggerBundle;->resourceBundleName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Ljava/util/logging/Logger$LoggerBundle;->resourceBundleName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Ljava/util/logging/Logger$LoggerBundle;->resourceBundleName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_1
    if-nez p1, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    invoke-direct {p0, p2}, Ljava/util/logging/Logger;->setCallersClassLoaderRef(Ljava/lang/Class;)V

    iget-boolean v1, p0, Ljava/util/logging/Logger;->isSystemLogger:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Ljava/util/logging/Logger;->getCallersClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Ljava/util/logging/Logger;->checkPermission()V

    :cond_3
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Ljava/util/logging/Logger;->findResourceBundle(Ljava/lang/String;Z)Ljava/util/ResourceBundle;

    move-result-object v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/logging/Logger;->callersClassLoaderRef:Ljava/lang/ref/WeakReference;

    new-instance v1, Ljava/util/MissingResourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t find "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " bundle"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, p1, v3}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_4
    sget-boolean v1, Ljava/util/logging/Logger;->-assertionsDisabled:Z

    if-nez v1, :cond_5

    iget-object v1, v0, Ljava/util/logging/Logger$LoggerBundle;->userBundle:Ljava/util/ResourceBundle;

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_5
    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/util/logging/Logger$LoggerBundle;->get(Ljava/lang/String;Ljava/util/ResourceBundle;)Ljava/util/logging/Logger$LoggerBundle;

    move-result-object v1

    iput-object v1, p0, Ljava/util/logging/Logger;->loggerBundle:Ljava/util/logging/Logger$LoggerBundle;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void
.end method

.method private updateEffectiveLevel()V
    .locals 5

    iget-object v4, p0, Ljava/util/logging/Logger;->levelObject:Ljava/util/logging/Level;

    if-eqz v4, :cond_0

    iget-object v4, p0, Ljava/util/logging/Logger;->levelObject:Ljava/util/logging/Level;

    invoke-virtual {v4}, Ljava/util/logging/Level;->intValue()I

    move-result v2

    :goto_0
    iget v4, p0, Ljava/util/logging/Logger;->levelValue:I

    if-ne v4, v2, :cond_2

    return-void

    :cond_0
    iget-object v4, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    if-eqz v4, :cond_1

    iget-object v4, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    iget v2, v4, Ljava/util/logging/Logger;->levelValue:I

    goto :goto_0

    :cond_1
    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v4}, Ljava/util/logging/Level;->intValue()I

    move-result v2

    goto :goto_0

    :cond_2
    iput v2, p0, Ljava/util/logging/Logger;->levelValue:I

    iget-object v4, p0, Ljava/util/logging/Logger;->kids:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Ljava/util/logging/Logger;->kids:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    iget-object v4, p0, Ljava/util/logging/Logger;->kids:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/logging/LogManager$LoggerWeakRef;

    invoke-virtual {v3}, Ljava/util/logging/LogManager$LoggerWeakRef;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/logging/Logger;

    if-eqz v1, :cond_3

    invoke-direct {v1}, Ljava/util/logging/Logger;->updateEffectiveLevel()V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method accessCheckedHandlers()[Ljava/util/logging/Handler;
    .locals 2

    iget-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    sget-object v1, Ljava/util/logging/Logger;->emptyHandlers:[Ljava/util/logging/Handler;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/logging/Handler;

    return-object v0
.end method

.method public addHandler(Ljava/util/logging/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/logging/Handler;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/util/logging/Logger;->checkPermission()V

    iget-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public config(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public config(Ljava/util/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/util/function/Supplier;)V

    return-void
.end method

.method public entering(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string/jumbo v1, "ENTRY"

    invoke-virtual {p0, v0, p1, p2, v1}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public entering(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string/jumbo v4, "ENTRY {0}"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public entering(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    const-string/jumbo v4, "ENTRY"

    if-nez p3, :cond_0

    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1, p2, v4}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v6, 0x0

    :goto_0
    array-length v0, p3

    if-ge v6, v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public exiting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string/jumbo v1, "RETURN"

    invoke-virtual {p0, v0, p1, p2, v1}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public exiting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string/jumbo v4, "RETURN {0}"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public fine(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public fine(Ljava/util/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/util/function/Supplier;)V

    return-void
.end method

.method public finer(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public finer(Ljava/util/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/util/function/Supplier;)V

    return-void
.end method

.method public finest(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public finest(Ljava/util/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/util/function/Supplier;)V

    return-void
.end method

.method public getFilter()Ljava/util/logging/Filter;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/Logger;->filter:Ljava/util/logging/Filter;

    return-object v0
.end method

.method public getHandlers()[Ljava/util/logging/Handler;
    .locals 1

    invoke-virtual {p0}, Ljava/util/logging/Logger;->accessCheckedHandlers()[Ljava/util/logging/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getLevel()Ljava/util/logging/Level;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/Logger;->levelObject:Ljava/util/logging/Level;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Ljava/util/logging/Logger;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public getResourceBundle()Ljava/util/ResourceBundle;
    .locals 2

    invoke-virtual {p0}, Ljava/util/logging/Logger;->getResourceBundleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/util/logging/Logger;->findResourceBundle(Ljava/lang/String;Z)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public getResourceBundleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/Logger;->loggerBundle:Ljava/util/logging/Logger$LoggerBundle;

    iget-object v0, v0, Ljava/util/logging/Logger$LoggerBundle;->resourceBundleName:Ljava/lang/String;

    return-object v0
.end method

.method public getUseParentHandlers()Z
    .locals 1

    iget-boolean v0, p0, Ljava/util/logging/Logger;->useParentHandlers:Z

    return v0
.end method

.method public info(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public info(Ljava/util/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/util/function/Supplier;)V

    return-void
.end method

.method final isLevelInitialized()Z
    .locals 1

    iget-object v0, p0, Ljava/util/logging/Logger;->levelObject:Ljava/util/logging/Level;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoggable(Ljava/util/logging/Level;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Ljava/util/logging/Logger;->levelValue:I

    sget v1, Ljava/util/logging/Logger;->offValue:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    return-void
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    return-void
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    return-void
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    return-void
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/Throwable;Ljava/util/function/Supplier;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/logging/Level;",
            "Ljava/lang/Throwable;",
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    return-void
.end method

.method public log(Ljava/util/logging/Level;Ljava/util/function/Supplier;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/logging/Level;",
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    return-void
.end method

.method public log(Ljava/util/logging/LogRecord;)V
    .locals 7

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Ljava/util/logging/Logger;->filter:Ljava/util/logging/Filter;

    if-eqz v3, :cond_1

    invoke-interface {v3, p1}, Ljava/util/logging/Filter;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    return-void

    :cond_1
    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_4

    iget-boolean v5, p0, Ljava/util/logging/Logger;->isSystemLogger:Z

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Ljava/util/logging/Logger;->accessCheckedHandlers()[Ljava/util/logging/Handler;

    move-result-object v2

    :goto_1
    const/4 v5, 0x0

    array-length v6, v2

    :goto_2
    if-ge v5, v6, :cond_3

    aget-object v0, v2, v5

    invoke-virtual {v0, p1}, Ljava/util/logging/Handler;->publish(Ljava/util/logging/LogRecord;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v2

    goto :goto_1

    :cond_3
    iget-boolean v5, p0, Ljava/util/logging/Logger;->isSystemLogger:Z

    if-eqz v5, :cond_5

    iget-boolean v4, v1, Ljava/util/logging/Logger;->useParentHandlers:Z

    :goto_3
    if-nez v4, :cond_6

    :cond_4
    return-void

    :cond_5
    invoke-virtual {v1}, Ljava/util/logging/Logger;->getUseParentHandlers()Z

    move-result v4

    goto :goto_3

    :cond_6
    iget-boolean v5, p0, Ljava/util/logging/Logger;->isSystemLogger:Z

    if-eqz v5, :cond_7

    iget-object v1, v1, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    goto :goto_0

    :cond_7
    invoke-virtual {v1}, Ljava/util/logging/Logger;->getParent()Ljava/util/logging/Logger;

    move-result-object v1

    goto :goto_0
.end method

.method public logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    return-void
.end method

.method public logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p5, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    return-void
.end method

.method public logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    return-void
.end method

.method public logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    return-void
.end method

.method public logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/function/Supplier;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/logging/Level;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-interface {p5}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    return-void
.end method

.method public logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/logging/Level;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-interface {p4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    return-void
.end method

.method public logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    invoke-direct {p0, v0, p4}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;Ljava/lang/String;)V

    return-void
.end method

.method public logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p6, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    invoke-direct {p0, v0, p4}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;Ljava/lang/String;)V

    return-void
.end method

.method public logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    invoke-virtual {v0, p6}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    invoke-direct {p0, v0, p4}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;Ljava/lang/String;)V

    return-void
.end method

.method public logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    invoke-virtual {v0, p6}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    invoke-direct {p0, v0, p4}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;Ljava/lang/String;)V

    return-void
.end method

.method public logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/util/ResourceBundle;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    invoke-virtual {v0, p6}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    invoke-direct {p0, v0, p4}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;Ljava/util/ResourceBundle;)V

    return-void
.end method

.method public varargs logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/util/ResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    if-eqz p6, :cond_1

    array-length v1, p6

    if-eqz v1, :cond_1

    invoke-virtual {v0, p6}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    :cond_1
    invoke-direct {p0, v0, p4}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;Ljava/util/ResourceBundle;)V

    return-void
.end method

.method final removeChildLogger(Ljava/util/logging/LogManager$LoggerWeakRef;)V
    .locals 4

    sget-object v3, Ljava/util/logging/Logger;->treeLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Ljava/util/logging/Logger;->kids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/logging/LogManager$LoggerWeakRef;

    if-ne v1, p1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-void

    :cond_1
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public removeHandler(Ljava/util/logging/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/logging/Logger;->checkPermission()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setFilter(Ljava/util/logging/Filter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/logging/Logger;->checkPermission()V

    iput-object p1, p0, Ljava/util/logging/Logger;->filter:Ljava/util/logging/Filter;

    return-void
.end method

.method public setLevel(Ljava/util/logging/Level;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/logging/Logger;->checkPermission()V

    sget-object v1, Ljava/util/logging/Logger;->treeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Ljava/util/logging/Logger;->levelObject:Ljava/util/logging/Level;

    invoke-direct {p0}, Ljava/util/logging/Logger;->updateEffectiveLevel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method setLogManager(Ljava/util/logging/LogManager;)V
    .locals 0

    iput-object p1, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    return-void
.end method

.method public setParent(Ljava/util/logging/Logger;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    iput-object v0, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    :cond_1
    iget-object v0, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkPermission()V

    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->doSetParent(Ljava/util/logging/Logger;)V

    return-void
.end method

.method public setResourceBundle(Ljava/util/ResourceBundle;)V
    .locals 5

    invoke-direct {p0}, Ljava/util/logging/Logger;->checkPermission()V

    invoke-virtual {p1}, Ljava/util/ResourceBundle;->getBaseBundleName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "resource bundle must have a name"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Ljava/util/logging/Logger;->loggerBundle:Ljava/util/logging/Logger$LoggerBundle;

    iget-object v3, v2, Ljava/util/logging/Logger$LoggerBundle;->resourceBundleName:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v2, Ljava/util/logging/Logger$LoggerBundle;->resourceBundleName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    if-nez v1, :cond_3

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "can\'t replace resource bundle"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-static {v0, p1}, Ljava/util/logging/Logger$LoggerBundle;->get(Ljava/lang/String;Ljava/util/ResourceBundle;)Ljava/util/logging/Logger$LoggerBundle;

    move-result-object v3

    iput-object v3, p0, Ljava/util/logging/Logger;->loggerBundle:Ljava/util/logging/Logger$LoggerBundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public setUseParentHandlers(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/util/logging/Logger;->checkPermission()V

    iput-boolean p1, p0, Ljava/util/logging/Logger;->useParentHandlers:Z

    return-void
.end method

.method public severe(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public severe(Ljava/util/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/util/function/Supplier;)V

    return-void
.end method

.method public throwing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {p0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string/jumbo v2, "THROW"

    invoke-direct {v0, v1, v2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    return-void
.end method

.method public warning(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public warning(Ljava/util/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/util/function/Supplier;)V

    return-void
.end method
