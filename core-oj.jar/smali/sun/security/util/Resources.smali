.class public Lsun/security/util/Resources;
.super Ljava/util/ListResourceBundle;
.source "Resources.java"


# static fields
.field private static final contents:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x41

    new-array v0, v0, [[Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "invalid.null.input.s."

    aput-object v2, v1, v3

    const-string/jumbo v2, "invalid null input(s)"

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "actions.can.only.be.read."

    aput-object v2, v1, v3

    const-string/jumbo v2, "actions can only be \'read\'"

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "permission.name.name.syntax.invalid."

    aput-object v2, v1, v3

    const-string/jumbo v2, "permission name [{0}] syntax invalid: "

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "Credential.Class.not.followed.by.a.Principal.Class.and.Name"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Credential Class not followed by a Principal Class and Name"

    aput-object v2, v1, v4

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "Principal.Class.not.followed.by.a.Principal.Name"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Principal Class not followed by a Principal Name"

    aput-object v2, v1, v4

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "Principal.Name.must.be.surrounded.by.quotes"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Principal Name must be surrounded by quotes"

    aput-object v2, v1, v4

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "Principal.Name.missing.end.quote"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Principal Name missing end quote"

    aput-object v2, v1, v4

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "PrivateCredentialPermission.Principal.Class.can.not.be.a.wildcard.value.if.Principal.Name.is.not.a.wildcard.value"

    aput-object v2, v1, v3

    const-string/jumbo v2, "PrivateCredentialPermission Principal Class can not be a wildcard (*) value if Principal Name is not a wildcard (*) value"

    aput-object v2, v1, v4

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "CredOwner.Principal.Class.class.Principal.Name.name"

    aput-object v2, v1, v3

    const-string/jumbo v2, "CredOwner:\n\tPrincipal Class = {0}\n\tPrincipal Name = {1}"

    aput-object v2, v1, v4

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "provided.null.name"

    aput-object v2, v1, v3

    const-string/jumbo v2, "provided null name"

    aput-object v2, v1, v4

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "provided.null.keyword.map"

    aput-object v2, v1, v3

    const-string/jumbo v2, "provided null keyword map"

    aput-object v2, v1, v4

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "provided.null.OID.map"

    aput-object v2, v1, v3

    const-string/jumbo v2, "provided null OID map"

    aput-object v2, v1, v4

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "NEWLINE"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\n"

    aput-object v2, v1, v4

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "invalid.null.AccessControlContext.provided"

    aput-object v2, v1, v3

    const-string/jumbo v2, "invalid null AccessControlContext provided"

    aput-object v2, v1, v4

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "invalid.null.action.provided"

    aput-object v2, v1, v3

    const-string/jumbo v2, "invalid null action provided"

    aput-object v2, v1, v4

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "invalid.null.Class.provided"

    aput-object v2, v1, v3

    const-string/jumbo v2, "invalid null Class provided"

    aput-object v2, v1, v4

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "Subject."

    aput-object v2, v1, v3

    const-string/jumbo v2, "Subject:\n"

    aput-object v2, v1, v4

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, ".Principal."

    aput-object v2, v1, v3

    const-string/jumbo v2, "\tPrincipal: "

    aput-object v2, v1, v4

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, ".Public.Credential."

    aput-object v2, v1, v3

    const-string/jumbo v2, "\tPublic Credential: "

    aput-object v2, v1, v4

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, ".Private.Credentials.inaccessible."

    aput-object v2, v1, v3

    const-string/jumbo v2, "\tPrivate Credentials inaccessible\n"

    aput-object v2, v1, v4

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, ".Private.Credential."

    aput-object v2, v1, v3

    const-string/jumbo v2, "\tPrivate Credential: "

    aput-object v2, v1, v4

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, ".Private.Credential.inaccessible."

    aput-object v2, v1, v3

    const-string/jumbo v2, "\tPrivate Credential inaccessible\n"

    aput-object v2, v1, v4

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "Subject.is.read.only"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Subject is read-only"

    aput-object v2, v1, v4

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "attempting.to.add.an.object.which.is.not.an.instance.of.java.security.Principal.to.a.Subject.s.Principal.Set"

    aput-object v2, v1, v3

    const-string/jumbo v2, "attempting to add an object which is not an instance of java.security.Principal to a Subject\'s Principal Set"

    aput-object v2, v1, v4

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "attempting.to.add.an.object.which.is.not.an.instance.of.class"

    aput-object v2, v1, v3

    const-string/jumbo v2, "attempting to add an object which is not an instance of {0}"

    aput-object v2, v1, v4

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "LoginModuleControlFlag."

    aput-object v2, v1, v3

    const-string/jumbo v2, "LoginModuleControlFlag: "

    aput-object v2, v1, v4

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "Invalid.null.input.name"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Invalid null input: name"

    aput-object v2, v1, v4

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "No.LoginModules.configured.for.name"

    aput-object v2, v1, v3

    const-string/jumbo v2, "No LoginModules configured for {0}"

    aput-object v2, v1, v4

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "invalid.null.Subject.provided"

    aput-object v2, v1, v3

    const-string/jumbo v2, "invalid null Subject provided"

    aput-object v2, v1, v4

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "invalid.null.CallbackHandler.provided"

    aput-object v2, v1, v3

    const-string/jumbo v2, "invalid null CallbackHandler provided"

    aput-object v2, v1, v4

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "null.subject.logout.called.before.login"

    aput-object v2, v1, v3

    const-string/jumbo v2, "null subject - logout called before login"

    aput-object v2, v1, v4

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "unable.to.instantiate.LoginModule.module.because.it.does.not.provide.a.no.argument.constructor"

    aput-object v2, v1, v3

    const-string/jumbo v2, "unable to instantiate LoginModule, {0}, because it does not provide a no-argument constructor"

    aput-object v2, v1, v4

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "unable.to.instantiate.LoginModule"

    aput-object v2, v1, v3

    const-string/jumbo v2, "unable to instantiate LoginModule"

    aput-object v2, v1, v4

    const/16 v2, 0x20

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "unable.to.instantiate.LoginModule."

    aput-object v2, v1, v3

    const-string/jumbo v2, "unable to instantiate LoginModule: "

    aput-object v2, v1, v4

    const/16 v2, 0x21

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "unable.to.find.LoginModule.class."

    aput-object v2, v1, v3

    const-string/jumbo v2, "unable to find LoginModule class: "

    aput-object v2, v1, v4

    const/16 v2, 0x22

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "unable.to.access.LoginModule."

    aput-object v2, v1, v3

    const-string/jumbo v2, "unable to access LoginModule: "

    aput-object v2, v1, v4

    const/16 v2, 0x23

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "Login.Failure.all.modules.ignored"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Login Failure: all modules ignored"

    aput-object v2, v1, v4

    const/16 v2, 0x24

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "java.security.policy.error.parsing.policy.message"

    aput-object v2, v1, v3

    const-string/jumbo v2, "java.security.policy: error parsing {0}:\n\t{1}"

    aput-object v2, v1, v4

    const/16 v2, 0x25

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "java.security.policy.error.adding.Permission.perm.message"

    aput-object v2, v1, v3

    const-string/jumbo v2, "java.security.policy: error adding Permission, {0}:\n\t{1}"

    aput-object v2, v1, v4

    const/16 v2, 0x26

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "java.security.policy.error.adding.Entry.message"

    aput-object v2, v1, v3

    const-string/jumbo v2, "java.security.policy: error adding Entry:\n\t{0}"

    aput-object v2, v1, v4

    const/16 v2, 0x27

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "alias.name.not.provided.pe.name."

    aput-object v2, v1, v3

    const-string/jumbo v2, "alias name not provided ({0})"

    aput-object v2, v1, v4

    const/16 v2, 0x28

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "unable.to.perform.substitution.on.alias.suffix"

    aput-object v2, v1, v3

    const-string/jumbo v2, "unable to perform substitution on alias, {0}"

    aput-object v2, v1, v4

    const/16 v2, 0x29

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "substitution.value.prefix.unsupported"

    aput-object v2, v1, v3

    const-string/jumbo v2, "substitution value, {0}, unsupported"

    aput-object v2, v1, v4

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "LPARAM"

    aput-object v2, v1, v3

    const-string/jumbo v2, "("

    aput-object v2, v1, v4

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "RPARAM"

    aput-object v2, v1, v3

    const-string/jumbo v2, ")"

    aput-object v2, v1, v4

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "type.can.t.be.null"

    aput-object v2, v1, v3

    const-string/jumbo v2, "type can\'t be null"

    aput-object v2, v1, v4

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "keystorePasswordURL.can.not.be.specified.without.also.specifying.keystore"

    aput-object v2, v1, v3

    const-string/jumbo v2, "keystorePasswordURL can not be specified without also specifying keystore"

    aput-object v2, v1, v4

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "expected.keystore.type"

    aput-object v2, v1, v3

    const-string/jumbo v2, "expected keystore type"

    aput-object v2, v1, v4

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "expected.keystore.provider"

    aput-object v2, v1, v3

    const-string/jumbo v2, "expected keystore provider"

    aput-object v2, v1, v4

    const/16 v2, 0x30

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "multiple.Codebase.expressions"

    aput-object v2, v1, v3

    const-string/jumbo v2, "multiple Codebase expressions"

    aput-object v2, v1, v4

    const/16 v2, 0x31

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "multiple.SignedBy.expressions"

    aput-object v2, v1, v3

    const-string/jumbo v2, "multiple SignedBy expressions"

    aput-object v2, v1, v4

    const/16 v2, 0x32

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "duplicate.keystore.domain.name"

    aput-object v2, v1, v3

    const-string/jumbo v2, "duplicate keystore domain name: {0}"

    aput-object v2, v1, v4

    const/16 v2, 0x33

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "duplicate.keystore.name"

    aput-object v2, v1, v3

    const-string/jumbo v2, "duplicate keystore name: {0}"

    aput-object v2, v1, v4

    const/16 v2, 0x34

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "SignedBy.has.empty.alias"

    aput-object v2, v1, v3

    const-string/jumbo v2, "SignedBy has empty alias"

    aput-object v2, v1, v4

    const/16 v2, 0x35

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "can.not.specify.Principal.with.a.wildcard.class.without.a.wildcard.name"

    aput-object v2, v1, v3

    const-string/jumbo v2, "can not specify Principal with a wildcard class without a wildcard name"

    aput-object v2, v1, v4

    const/16 v2, 0x36

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "expected.codeBase.or.SignedBy.or.Principal"

    aput-object v2, v1, v3

    const-string/jumbo v2, "expected codeBase or SignedBy or Principal"

    aput-object v2, v1, v4

    const/16 v2, 0x37

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "expected.permission.entry"

    aput-object v2, v1, v3

    const-string/jumbo v2, "expected permission entry"

    aput-object v2, v1, v4

    const/16 v2, 0x38

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "number."

    aput-object v2, v1, v3

    const-string/jumbo v2, "number "

    aput-object v2, v1, v4

    const/16 v2, 0x39

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "expected.expect.read.end.of.file."

    aput-object v2, v1, v3

    const-string/jumbo v2, "expected [{0}], read [end of file]"

    aput-object v2, v1, v4

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "expected.read.end.of.file."

    aput-object v2, v1, v3

    const-string/jumbo v2, "expected [;], read [end of file]"

    aput-object v2, v1, v4

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "line.number.msg"

    aput-object v2, v1, v3

    const-string/jumbo v2, "line {0}: {1}"

    aput-object v2, v1, v4

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "line.number.expected.expect.found.actual."

    aput-object v2, v1, v3

    const-string/jumbo v2, "line {0}: expected [{1}], found [{2}]"

    aput-object v2, v1, v4

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "null.principalClass.or.principalName"

    aput-object v2, v1, v3

    const-string/jumbo v2, "null principalClass or principalName"

    aput-object v2, v1, v4

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "PKCS11.Token.providerName.Password."

    aput-object v2, v1, v3

    const-string/jumbo v2, "PKCS11 Token [{0}] Password: "

    aput-object v2, v1, v4

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "unable.to.instantiate.Subject.based.policy"

    aput-object v2, v1, v3

    const-string/jumbo v2, "unable to instantiate Subject-based policy"

    aput-object v2, v1, v4

    const/16 v2, 0x40

    aput-object v1, v0, v2

    sput-object v0, Lsun/security/util/Resources;->contents:[[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public getContents()[[Ljava/lang/Object;
    .locals 1

    sget-object v0, Lsun/security/util/Resources;->contents:[[Ljava/lang/Object;

    return-object v0
.end method
