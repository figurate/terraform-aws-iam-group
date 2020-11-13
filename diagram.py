from diagrams import Diagram
from diagrams.aws.security import IAM

with Diagram("AWS IAM User Group", show=False, direction="TB"):
    IAM("iam group") << [IAM("user 1..n")]
