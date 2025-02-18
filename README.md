# PoC HashiCorp terraform stacks

Assembling resource group + secret manager + key protect modules from terraform-ibm-modules to create a stack that:
1. Deploy in same resource group
2. Deploy key protect in rg in 1
3. Deploy Secret manager and configure it with key protect instance created in 2