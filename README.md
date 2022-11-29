# mec-poc

Proof-of-concept (POC) of using Regen network to create and distribute a marine ecocredit (MEC)

## Steps

1. Install Regen package: https://docs.regen.network/ledger/get-started/#pre-built-package

2. Create credit type:

  - Ask for approval from a Regen representative (e.g. Ryan Christoffersen) OR request approval using terminal command: regen tx gov submit-proposal credit-type-proposal [path_to_file.json] [flags]

  - For information on how to submit a credit type proposal: https://docs.regen.network/commands/regen_tx_gov_submit-proposal_credit-type-proposal.html

  - Confirm creation by looking at http://redwood.regen.network:1317/regen/ecocredit/v1/credit-types

3. Create a Regen account and up a secure key: `regen keys add <name>`

  - name: <name>
    type: local
    address: <address>
    pubkey: '{"@type":"/cosmos.crypto.secp256k1.PubKey","key":"AwLe6nj2gylMIBg9sQTjvQA6+DznGGX1kv2xEQ81O8OP"}'
    mnemonic: ""

4. Use the faucet to receive testnet tokens: `curl http://redwood-sentry.vitwit.com:8000/faucet/<account_address>`
  
5. Configure Regen to communicate with redwood testnet: `regen config node http://redwood.regen.network:26657`
  
6. Create credit class: `regen tx ecocredit create-class <address> MEC "metadata" 20000000uregen --from <address>`
  
  - This command will create a credit class with your address as the admin and an issuer
  
  - The metadata is typically a content hash of the data that you want associated with the credit class (i.e. methodology info). It can be updated later       for credit classes and projects, but not for batches.

  - Alternatively, you can create a json file with the data you want associated with the credit class (i.e. methodology info), then create a content hash       of the json, and anchor the data on regen using the data module. Anchoring the data returns a regen IRI which is often stored in the metadata field.

7. Create Cocos Island Test Project: `regen tx ecocredit create-project MEC01 CR "metadata" --from <address>`
  
8. Ensure network chain ID is pointing to the right chain (in this case, Redwood Testnet): `regen config chain-id regen-redwood-1`

9. Create a batch.json file with your project id, issuer address, recipient address, and the number of tradable/retired credits being issued
  - For an example json file: https://docs.regen.network/commands/regen_tx_ecocredit_create-batch.html

10. Issue Credit Batch: `regen tx ecocredit create-batch batch.json --from "regen1thucp0ty0knyhe8z8sh4u47vk5ytxzzna9ky5d" --fees 500uregen`




