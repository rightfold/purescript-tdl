module TDL.Service
  ( module TDL.Support
  , listen
  ) where

import Control.Monad.Aff (Aff)
import Node.HTTP (HTTP)
import Prelude
import TDL.Support (Service(..))

foreign import listen
  :: ∀ eff
   . {host :: String, port :: Int, enableCORS :: Boolean}
  -> Array {version :: Int, service :: Service (http :: HTTP | eff)}
  -> Aff (http :: HTTP | eff) Unit
