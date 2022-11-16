# mec-poc

Proof-of-concept (POC) of using Regen network to create and distribute a marine ecocredit (MEC)

## Steps

1. Install Regen: https://docs.regen.network/ledger/get-started/#pre-built-package

2. Create credit type

- Ask for approval from Ryan Christoffersen OR request approval using terminal command: regen tx gov submit-proposal credit-type-proposal [path_to_file.json] [flags]

- For information on how to submit a credit type proposal: https://docs.regen.network/commands/regen_tx_gov_submit-proposal_credit-type-proposal.html

- Confirm creation by looking at http://redwood.regen.network:1317/regen/ecocredit/v1/credit-types

3. Create a Regen account and up a secure key: regen keys add <name>

- name: <name>
  type: local
  address: <address>
  pubkey: '{"@type":"/cosmos.crypto.secp256k1.PubKey","key":"AwLe6nj2gylMIBg9sQTjvQA6+DznGGX1kv2xEQ81O8OP"}'
  mnemonic: ""

4. Use the faucet to receive testnet tokens
5. Configure Regen to communicate with redwood testnet
6. Create credit class

- Run create_credit_class.sh

7. Create Cocos Island Test Project

8. Issue Credit Batch


