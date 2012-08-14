module Data.UUID.Instances where

import Data.UUID
import Data.Aeson
import Data.Text.Encoding as E
import qualified Data.ByteString.Char8 as C
-- import Data.Aeson.Types 
import Data.SafeCopy

instance FromJSON UUID where
  parseJSON x = do 
    r <- return . fromString . C.unpack . E.encodeUtf8 =<< parseJSON x
    case r of 
      Nothing -> fail ("UUID parsing failed " ++ show x )
      Just uuid -> return uuid 

instance ToJSON UUID where
  toJSON = toJSON . E.decodeUtf8 . C.pack . toString 

instance SafeCopy UUID where 
  putCopy uuid = contain $ safePut (toByteString uuid) 
  getCopy = contain 
            $ maybe (fail "cannot parse UUID") return . fromByteString 
              =<< safeGet
