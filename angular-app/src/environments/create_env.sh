#!/bin/sh
export WAGMI_PROJ_ID='77a83a5f72dc458c6a86c3fec444e5da'
export ALCHEMY_OP_API_KEY='CTCqaYE3Hv4fNyTrpdfH3oMY-tOyaWrV'
export ALCHEMY_ARBITRUM_API_KEY='TKGQuHPK164Ip7zS9nhB5D_p1UarJ3St'
export ALCHEMY_ARBTRUM_URL='https://arb-sepolia.g.alchemy.com/v2/TKGQuHPK164Ip7zS9nhB5D_p1UarJ3St'
export NFT_ACCESS_CONTRACT='0x2f98ed540467ffAb3841Aa8B0bBe175bA85DbdF9'
export DONOR_CONTRACT='0xfd1688420Ec23CF2860a4fbeF3f99598af26056F'
export SCIENTIST_NFT_CONTRACT='0x5C829Fb1fea877bED3cF2E0764a1322b9BB20984'
export IP_TOKEN_CONTRACT='0x12093B7083Af809758CDEAe72255418834707345'
export ROYALTY_TOKEN_CONTRACT='0xE7513575dCd1A051456E98b6bC3A47f712abdA89'
export GOVERNOR_CONTRACT='0xa72429D258C7eaF79a5ccbAfEb040f075810c28b'
export ETHDENVER_PRIVATE_KEY='8e7a42657b7b3b2e2d5b9150831212773938c982111192723052460853a8a7b5'

MY_PROD_ENV_CONF='./src/environments/environment.ts'

truncate -s 0 $MY_PROD_ENV_CONF
echo 'export const environment = {' > $MY_PROD_ENV_CONF
echo '  production: true,' >> $MY_PROD_ENV_CONF
echo "  WAGMI_PROJ_ID: '$WAGMI_PROJ_ID'," >> $MY_PROD_ENV_CONF
echo "  ALCHEMY_OP_API_KEY: '$ALCHEMY_OP_API_KEY'," >> $MY_PROD_ENV_CONF
echo "  ALCHEMY_ARBITRUM_API_KEY: '$ALCHEMY_ARBITRUM_API_KEY'," >> $MY_PROD_ENV_CONF
echo "  ALCHEMY_ARBTRUM_URL: '$ALCHEMY_ARBTRUM_URL'," >> $MY_PROD_ENV_CONF
echo "  NFT_ACCESS_CONTRACT: '$NFT_ACCESS_CONTRACT'," >> $MY_PROD_ENV_CONF
echo "  DONOR_CONTRACT: '$DONOR_CONTRACT'," >> $MY_PROD_ENV_CONF
echo "  SCIENTIST_NFT_CONTRACT: '$SCIENTIST_NFT_CONTRACT'," >> $MY_PROD_ENV_CONF
echo "  IP_TOKEN_CONTRACT: '$IP_TOKEN_CONTRACT'," >> $MY_PROD_ENV_CONF
echo "  ROYALTY_TOKEN_CONTRACT: '$ROYALTY_TOKEN_CONTRACT'," >> $MY_PROD_ENV_CONF
echo "  GOVERNOR_CONTRACT: '$GOVERNOR_CONTRACT'," >> $MY_PROD_ENV_CONF
echo "  ETHDENVER_PRIVATE_KEY: '$ETHDENVER_PRIVATE_KEY'" >> $MY_PROD_ENV_CONF
echo '}' >> $MY_PROD_ENV_CONF
echo "environments.ts file created successfully!"
