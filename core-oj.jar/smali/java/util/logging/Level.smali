.class public Ljava/util/logging/Level;
.super Ljava/lang/Object;
.source "Level.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/logging/Level$KnownLevel;
    }
.end annotation


# static fields
.field public static final ALL:Ljava/util/logging/Level;

.field public static final CONFIG:Ljava/util/logging/Level;

.field public static final FINE:Ljava/util/logging/Level;

.field public static final FINER:Ljava/util/logging/Level;

.field public static final FINEST:Ljava/util/logging/Level;

.field public static final INFO:Ljava/util/logging/Level;

.field public static final OFF:Ljava/util/logging/Level;

.field public static final SEVERE:Ljava/util/logging/Level;

.field public static final WARNING:Ljava/util/logging/Level;

.field private static final defaultBundle:Ljava/lang/String; = "sun.util.logging.resources.logging"

.field private static final serialVersionUID:J = -0x71778eecae8cc96eL


# instance fields
.field private transient cachedLocale:Ljava/util/Locale;

.field private transient localizedLevelName:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final resourceBundleName:Ljava/lang/String;

.field private final value:I


# direct methods
.method static synthetic -get0(Ljava/util/logging/Level;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Ljava/util/logging/Level;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Ljava/util/logging/Level;)I
    .locals 1

    iget v0, p0, Ljava/util/logging/Level;->value:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/logging/Level;

    const-string/jumbo v1, "OFF"

    const-string/jumbo v2, "sun.util.logging.resources.logging"

    const v3, 0x7fffffff

    invoke-direct {v0, v1, v3, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    new-instance v0, Ljava/util/logging/Level;

    const-string/jumbo v1, "SEVERE"

    const-string/jumbo v2, "sun.util.logging.resources.logging"

    const/16 v3, 0x3e8

    invoke-direct {v0, v1, v3, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v0, Ljava/util/logging/Level;

    const-string/jumbo v1, "WARNING"

    const-string/jumbo v2, "sun.util.logging.resources.logging"

    const/16 v3, 0x384

    invoke-direct {v0, v1, v3, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v0, Ljava/util/logging/Level;

    const-string/jumbo v1, "INFO"

    const-string/jumbo v2, "sun.util.logging.resources.logging"

    const/16 v3, 0x320

    invoke-direct {v0, v1, v3, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v0, Ljava/util/logging/Level;

    const-string/jumbo v1, "CONFIG"

    const-string/jumbo v2, "sun.util.logging.resources.logging"

    const/16 v3, 0x2bc

    invoke-direct {v0, v1, v3, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    new-instance v0, Ljava/util/logging/Level;

    const-string/jumbo v1, "FINE"

    const-string/jumbo v2, "sun.util.logging.resources.logging"

    const/16 v3, 0x1f4

    invoke-direct {v0, v1, v3, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v0, Ljava/util/logging/Level;

    const-string/jumbo v1, "FINER"

    const-string/jumbo v2, "sun.util.logging.resources.logging"

    const/16 v3, 0x190

    invoke-direct {v0, v1, v3, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    new-instance v0, Ljava/util/logging/Level;

    const-string/jumbo v1, "FINEST"

    const-string/jumbo v2, "sun.util.logging.resources.logging"

    const/16 v3, 0x12c

    invoke-direct {v0, v1, v3, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v0, Ljava/util/logging/Level;

    const-string/jumbo v1, "ALL"

    const-string/jumbo v2, "sun.util.logging.resources.logging"

    const/high16 v3, -0x80000000

    invoke-direct {v0, v1, v3, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    iput p2, p0, Ljava/util/logging/Level;->value:I

    iput-object p3, p0, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    if-nez p3, :cond_2

    :goto_0
    iput-object p1, p0, Ljava/util/logging/Level;->localizedLevelName:Ljava/lang/String;

    iput-object v0, p0, Ljava/util/logging/Level;->cachedLocale:Ljava/util/Locale;

    if-eqz p4, :cond_1

    invoke-static {p0}, Ljava/util/logging/Level$KnownLevel;->add(Ljava/util/logging/Level;)V

    :cond_1
    return-void

    :cond_2
    move-object p1, v0

    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;ZLjava/util/logging/Level;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method

.method private computeLocalizedLevelName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 7

    iget-object v5, p0, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-static {v5, p1, v6}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v3

    iget-object v5, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "sun.util.logging.resources.logging"

    iget-object v6, p0, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v3}, Ljava/util/ResourceBundle;->getLocale()Ljava/util/Locale;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    :goto_0
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    :goto_1
    return-object v5

    :cond_2
    move-object v1, v4

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method static findLevel(Ljava/lang/String;)Ljava/util/logging/Level;
    .locals 5

    const/4 v4, 0x0

    if-nez p0, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    :cond_0
    invoke-static {p0}, Ljava/util/logging/Level$KnownLevel;->findByName(Ljava/lang/String;)Ljava/util/logging/Level$KnownLevel;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v4, v1, Ljava/util/logging/Level$KnownLevel;->mirroredLevel:Ljava/util/logging/Level;

    return-object v4

    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/util/logging/Level$KnownLevel;->findByValue(I)Ljava/util/logging/Level$KnownLevel;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v2, Ljava/util/logging/Level;

    invoke-direct {v2, p0, v3}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;I)V

    invoke-static {v3}, Ljava/util/logging/Level$KnownLevel;->findByValue(I)Ljava/util/logging/Level$KnownLevel;

    move-result-object v1

    :cond_2
    iget-object v4, v1, Ljava/util/logging/Level$KnownLevel;->mirroredLevel:Ljava/util/logging/Level;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v0

    invoke-static {p0}, Ljava/util/logging/Level$KnownLevel;->findByLocalizedLevelName(Ljava/lang/String;)Ljava/util/logging/Level$KnownLevel;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v4, v1, Ljava/util/logging/Level$KnownLevel;->mirroredLevel:Ljava/util/logging/Level;

    return-object v4

    :cond_3
    return-object v4
.end method

.method public static declared-synchronized parse(Ljava/lang/String;)Ljava/util/logging/Level;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-class v5, Ljava/util/logging/Level;

    monitor-enter v5

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    invoke-static {p0}, Ljava/util/logging/Level$KnownLevel;->findByName(Ljava/lang/String;)Ljava/util/logging/Level$KnownLevel;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v4, v1, Ljava/util/logging/Level$KnownLevel;->levelObject:Ljava/util/logging/Level;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return-object v4

    :cond_0
    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/util/logging/Level$KnownLevel;->findByValue(I)Ljava/util/logging/Level$KnownLevel;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v2, Ljava/util/logging/Level;

    invoke-direct {v2, p0, v3}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;I)V

    invoke-static {v3}, Ljava/util/logging/Level$KnownLevel;->findByValue(I)Ljava/util/logging/Level$KnownLevel;

    move-result-object v1

    :cond_1
    iget-object v4, v1, Ljava/util/logging/Level$KnownLevel;->levelObject:Ljava/util/logging/Level;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    return-object v4

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {p0}, Ljava/util/logging/Level$KnownLevel;->findByLocalizedLevelName(Ljava/lang/String;)Ljava/util/logging/Level$KnownLevel;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v4, v1, Ljava/util/logging/Level$KnownLevel;->levelObject:Ljava/util/logging/Level;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    return-object v4

    :cond_2
    :try_start_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Bad level \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 5

    invoke-static {p0}, Ljava/util/logging/Level$KnownLevel;->matches(Ljava/util/logging/Level;)Ljava/util/logging/Level$KnownLevel;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Ljava/util/logging/Level$KnownLevel;->levelObject:Ljava/util/logging/Level;

    return-object v2

    :cond_0
    new-instance v0, Ljava/util/logging/Level;

    iget-object v2, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    iget v3, p0, Ljava/util/logging/Level;->value:I

    iget-object v4, p0, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v3, 0x0

    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/util/logging/Level;

    move-object v2, v0

    iget v4, v2, Ljava/util/logging/Level;->value:I

    iget v5, p0, Ljava/util/logging/Level;->value:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    :catch_0
    move-exception v1

    return v3
.end method

.method final getCachedLocalizedLevelName()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Ljava/util/logging/Level;->localizedLevelName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/logging/Level;->cachedLocale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/logging/Level;->cachedLocale:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/logging/Level;->localizedLevelName:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    return-object v0

    :cond_1
    return-object v2
.end method

.method final getLevelName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    return-object v0
.end method

.method final declared-synchronized getLocalizedLevelName()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/logging/Level;->getCachedLocalizedLevelName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    :try_start_2
    invoke-direct {p0, v2}, Ljava/util/logging/Level;->computeLocalizedLevelName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/util/logging/Level;->localizedLevelName:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    iput-object v2, p0, Ljava/util/logging/Level;->cachedLocale:Ljava/util/Locale;

    iget-object v3, p0, Ljava/util/logging/Level;->localizedLevelName:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v3

    :catch_0
    move-exception v1

    :try_start_4
    iget-object v3, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    iput-object v3, p0, Ljava/util/logging/Level;->localizedLevelName:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getLocalizedName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/util/logging/Level;->getLocalizedLevelName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceBundleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Ljava/util/logging/Level;->value:I

    return v0
.end method

.method public final intValue()I
    .locals 1

    iget v0, p0, Ljava/util/logging/Level;->value:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    return-object v0
.end method
