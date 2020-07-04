module "cdh5" {
    source  = "./aws"

    tag_name = "cdh"
    key_name = "brian_terra_key"
    key_path = "brian_terra_key.pem"
    region = "ap-southeast-2"
    
    # nodes
    server = "1"  # 1 or 0
}