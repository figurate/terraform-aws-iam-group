from diagrams import Diagram
from diagrams.aws.security import IAM, IAMPermissions

with Diagram("AWS IAM Group", show=False, direction="TB"):
    permssions = IAMPermissions("group permissions")
    group = IAM("iam group")
    permssions - group << [IAM("user 1..n")]
