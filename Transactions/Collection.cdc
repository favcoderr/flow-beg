import CryptoPoops from 0x07
import NonFungibleToken from 0x07

transaction() {
  prepare(acct: AuthAccount) {
  

    // Create a collection in account storage.
    acct.save(<- CryptoPoops.createEmptyCollection(), to: /storage/Collection)

    // Link it to the public.
    acct.link<&CryptoPoops.Collection{NonFungibleToken.CollectionPublic,CryptoPoops.MyAuthCollection}>(/public/Collection, target: /storage/Collection)

  }

  execute {
    log("CryptoPoops collections created successfully")

  }
}