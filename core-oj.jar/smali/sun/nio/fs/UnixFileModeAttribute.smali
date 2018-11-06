.class Lsun/nio/fs/UnixFileModeAttribute;
.super Ljava/lang/Object;
.source "UnixFileModeAttribute.java"


# static fields
.field private static final synthetic -java-nio-file-attribute-PosixFilePermissionSwitchesValues:[I

.field static final ALL_PERMISSIONS:I

.field static final ALL_READWRITE:I

.field static final TEMPFILE_PERMISSIONS:I


# direct methods
.method private static synthetic -getjava-nio-file-attribute-PosixFilePermissionSwitchesValues()[I
    .locals 3

    sget-object v0, Lsun/nio/fs/UnixFileModeAttribute;->-java-nio-file-attribute-PosixFilePermissionSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lsun/nio/fs/UnixFileModeAttribute;->-java-nio-file-attribute-PosixFilePermissionSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Ljava/nio/file/attribute/PosixFilePermission;->values()[Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v1}, Ljava/nio/file/attribute/PosixFilePermission;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v1}, Ljava/nio/file/attribute/PosixFilePermission;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v1}, Ljava/nio/file/attribute/PosixFilePermission;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    :try_start_3
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v1}, Ljava/nio/file/attribute/PosixFilePermission;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v1}, Ljava/nio/file/attribute/PosixFilePermission;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v1}, Ljava/nio/file/attribute/PosixFilePermission;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    :try_start_6
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v1}, Ljava/nio/file/attribute/PosixFilePermission;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v1}, Ljava/nio/file/attribute/PosixFilePermission;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v1}, Ljava/nio/file/attribute/PosixFilePermission;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    sput-object v0, Lsun/nio/fs/UnixFileModeAttribute;->-java-nio-file-attribute-PosixFilePermissionSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1

    :catch_8
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 2

    sget v0, Lsun/nio/fs/UnixConstants;->S_IRUSR:I

    sget v1, Lsun/nio/fs/UnixConstants;->S_IWUSR:I

    or-int/2addr v0, v1

    sget v1, Lsun/nio/fs/UnixConstants;->S_IXUSR:I

    or-int/2addr v0, v1

    sget v1, Lsun/nio/fs/UnixConstants;->S_IRGRP:I

    or-int/2addr v0, v1

    sget v1, Lsun/nio/fs/UnixConstants;->S_IWGRP:I

    or-int/2addr v0, v1

    sget v1, Lsun/nio/fs/UnixConstants;->S_IXGRP:I

    or-int/2addr v0, v1

    sget v1, Lsun/nio/fs/UnixConstants;->S_IROTH:I

    or-int/2addr v0, v1

    sget v1, Lsun/nio/fs/UnixConstants;->S_IWOTH:I

    or-int/2addr v0, v1

    sget v1, Lsun/nio/fs/UnixConstants;->S_IXOTH:I

    or-int/2addr v0, v1

    sput v0, Lsun/nio/fs/UnixFileModeAttribute;->ALL_PERMISSIONS:I

    sget v0, Lsun/nio/fs/UnixConstants;->S_IRUSR:I

    sget v1, Lsun/nio/fs/UnixConstants;->S_IWUSR:I

    or-int/2addr v0, v1

    sget v1, Lsun/nio/fs/UnixConstants;->S_IRGRP:I

    or-int/2addr v0, v1

    sget v1, Lsun/nio/fs/UnixConstants;->S_IWGRP:I

    or-int/2addr v0, v1

    sget v1, Lsun/nio/fs/UnixConstants;->S_IROTH:I

    or-int/2addr v0, v1

    sget v1, Lsun/nio/fs/UnixConstants;->S_IWOTH:I

    or-int/2addr v0, v1

    sput v0, Lsun/nio/fs/UnixFileModeAttribute;->ALL_READWRITE:I

    sget v0, Lsun/nio/fs/UnixConstants;->S_IRUSR:I

    sget v1, Lsun/nio/fs/UnixConstants;->S_IWUSR:I

    or-int/2addr v0, v1

    sget v1, Lsun/nio/fs/UnixConstants;->S_IXUSR:I

    or-int/2addr v0, v1

    sput v0, Lsun/nio/fs/UnixFileModeAttribute;->TEMPFILE_PERMISSIONS:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static varargs toUnixMode(I[Ljava/nio/file/attribute/FileAttribute;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/nio/file/attribute/FileAttribute",
            "<*>;)I"
        }
    .end annotation

    move v1, p0

    const/4 v3, 0x0

    array-length v5, p1

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, p1, v4

    invoke-interface {v0}, Ljava/nio/file/attribute/FileAttribute;->name()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "posix:permissions"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "unix:permissions"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/nio/file/attribute/FileAttribute;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\' not supported as initial attribute"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-interface {v0}, Ljava/nio/file/attribute/FileAttribute;->value()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-static {v3}, Lsun/nio/fs/UnixFileModeAttribute;->toUnixMode(Ljava/util/Set;)I

    move-result v1

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    :cond_1
    return v1
.end method

.method static toUnixMode(Ljava/util/Set;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/file/attribute/PosixFilePermission;

    if-nez v1, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_0
    invoke-static {}, Lsun/nio/fs/UnixFileModeAttribute;->-getjava-nio-file-attribute-PosixFilePermissionSwitchesValues()[I

    move-result-object v3

    invoke-virtual {v1}, Ljava/nio/file/attribute/PosixFilePermission;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget v3, Lsun/nio/fs/UnixConstants;->S_IXGRP:I

    or-int/2addr v0, v3

    goto :goto_0

    :pswitch_1
    sget v3, Lsun/nio/fs/UnixConstants;->S_IRUSR:I

    or-int/2addr v0, v3

    goto :goto_0

    :pswitch_2
    sget v3, Lsun/nio/fs/UnixConstants;->S_IWUSR:I

    or-int/2addr v0, v3

    goto :goto_0

    :pswitch_3
    sget v3, Lsun/nio/fs/UnixConstants;->S_IXUSR:I

    or-int/2addr v0, v3

    goto :goto_0

    :pswitch_4
    sget v3, Lsun/nio/fs/UnixConstants;->S_IRGRP:I

    or-int/2addr v0, v3

    goto :goto_0

    :pswitch_5
    sget v3, Lsun/nio/fs/UnixConstants;->S_IWGRP:I

    or-int/2addr v0, v3

    goto :goto_0

    :pswitch_6
    sget v3, Lsun/nio/fs/UnixConstants;->S_IROTH:I

    or-int/2addr v0, v3

    goto :goto_0

    :pswitch_7
    sget v3, Lsun/nio/fs/UnixConstants;->S_IWOTH:I

    or-int/2addr v0, v3

    goto :goto_0

    :pswitch_8
    sget v3, Lsun/nio/fs/UnixConstants;->S_IXOTH:I

    or-int/2addr v0, v3

    goto :goto_0

    :cond_1
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
