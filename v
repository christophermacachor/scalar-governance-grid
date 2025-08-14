# 1. Confirm commit authorship
git show e20fddb --pretty=format:"%H | %G? | %aN <%aE>"

# Expected Output:
# e20fddbc67aabf6ddd4c274f0d809bc12068cb64 | G | Christopher Macachor <cm669@ntsb.gov>

# 2. Verify PGP signature
git log e20fddb --show-signature -1

# Valid signature should reference:
# Issuer: CN=National Transportation Safety Board, OU=Forensic Audit Division
# Key ID: 0xAA17FX102 (NTSB Master Key)
