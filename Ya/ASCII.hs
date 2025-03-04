module Ya.ASCII where

import Ya

type Symbol = Unit # Bracket `S` Unit # Punctuate

pattern Bracket x = This (Tagged x) :: Symbol
pattern Punctuate x = That (Tagged x) :: Symbol

type Punctuate = Unit `S` Unit `S` Unit
 `S` Unit `S` Unit `S` Unit `S` Unit
 `S` Unit `S` Unit `S` Unit `S` Unit
 `S` Unit `S` Unit `S` Unit `S` Unit
 `S` Unit `S` Unit `S` Unit `S` Unit
 `S` Unit `S` Unit `S` Unit `S` Unit

pattern Doublequote e = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This e))))))))))))))))))))) :: Punctuate
pattern Singlequote e = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That e))))))))))))))))))))) :: Punctuate
pattern Hash e        = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That e)))))))))))))))))))) :: Punctuate
pattern Hyphen e      = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That e))))))))))))))))))) :: Punctuate
pattern At e          = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That e)))))))))))))))))) :: Punctuate
pattern Circumflex e       = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That e))))))))))))))))) :: Punctuate
pattern Underscore e  = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That e)))))))))))))))) :: Punctuate
pattern Grave e       = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That e))))))))))))))) :: Punctuate
pattern Bar e         = This (This (This (This (This (This (This (This (This (This (This (This (This (This (That e)))))))))))))) :: Punctuate
pattern Tilde e       = This (This (This (This (This (This (This (This (This (This (This (This (This (That e))))))))))))) :: Punctuate
pattern Plus e        = This (This (This (This (This (This (This (This (This (This (This (This (That e)))))))))))) :: Punctuate
pattern Asterisk e    = This (This (This (This (This (This (This (This (This (This (This (That e))))))))))) :: Punctuate
pattern Percent e     = This (This (This (This (This (This (This (This (This (This (That e)))))))))) :: Punctuate
pattern Ampersand e   = This (This (This (This (This (This (This (This (This (That e))))))))) :: Punctuate
pattern Dollar e      = This (This (This (This (This (This (This (This (That e)))))))) :: Punctuate
--  (Back `ha` Slash) = This (This (This (This (This (This (This (That e))))))) :: Punctuate
pattern Slash e       = This (This (This (This (This (This (That e)))))) -- :: Punctuate
pattern Period e      = This (This (This (This (This (That e))))) :: Punctuate
pattern Comma e       = This (This (This (This (That e)))) :: Punctuate
pattern Semicolon e   = This (This (This (That e))) :: Punctuate
pattern Colon e       = This (This (That e)) :: Punctuate
pattern Exclam e      = This (That e) :: Punctuate
pattern Question e    = That e :: Punctuate

type Bracket = Shape `S` Shape

type Shape = Unit `S` Unit `S` Unit `S` Unit

pattern Round, Curly, Angle, Square :: Shape
pattern Round = This (This (This Unit))
pattern Curly = This (This (That Unit))
pattern Angle = This (That Unit)
pattern Square = That Unit

pattern Opened, Closed :: e `AR_` e `S` e
pattern Opened x = This x
pattern Closed x = That x

type Latin = Unit `S` Unit `S` Unit `S` Unit `S` Unit
 `S` Unit `S` Unit `S` Unit `S` Unit `S` Unit `S` Unit `S` Unit
 `S` Unit `S` Unit `S` Unit `S` Unit `S` Unit `S` Unit `S` Unit
 `S` Unit `S` Unit `S` Unit `S` Unit `S` Unit `S` Unit `S` Unit

pattern A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z :: Latin
pattern A = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This Unit))))))))))))))))))))))))
pattern B = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That Unit))))))))))))))))))))))))
pattern C = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That Unit)))))))))))))))))))))))
pattern D = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That Unit))))))))))))))))))))))
pattern E = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That Unit)))))))))))))))))))))
pattern F = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That Unit))))))))))))))))))))
pattern G = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That Unit)))))))))))))))))))
pattern H = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That Unit))))))))))))))))))
pattern I = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That Unit)))))))))))))))))
pattern J = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That Unit))))))))))))))))
pattern K = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That Unit)))))))))))))))
pattern L = This (This (This (This (This (This (This (This (This (This (This (This (This (This (That Unit))))))))))))))
pattern M = This (This (This (This (This (This (This (This (This (This (This (This (This (That Unit)))))))))))))
pattern N = This (This (This (This (This (This (This (This (This (This (This (This (That Unit))))))))))))
pattern O = This (This (This (This (This (This (This (This (This (This (This (That Unit)))))))))))
pattern P = This (This (This (This (This (This (This (This (This (This (That Unit))))))))))
pattern Q = This (This (This (This (This (This (This (This (This (That Unit)))))))))
pattern R = This (This (This (This (This (This (This (This (That Unit))))))))
pattern S = This (This (This (This (This (This (This (That Unit)))))))
pattern T = This (This (This (This (This (This (That Unit))))))
pattern U = This (This (This (This (This (That Unit)))))
pattern V = This (This (This (This (That Unit))))
pattern W = This (This (This (That Unit)))
pattern X = This (This (That Unit))
pattern Y = This (That Unit)
pattern Z = That Unit

type Cased e = e `S` e

pattern Lower, Upper :: e `AR_` e `S` e
pattern Lower x = This x
pattern Upper x = That x

type Letter = Cased Latin

type Digit = Unit `S` Unit `S` Unit `S` Unit `S` Unit `S` Unit `S` Unit `S` Unit `S` Unit `S` Unit

pattern Zero e = This (This (This (This (This (This (This (This (This e))))))))
pattern One e = This (This (This (This (This (This (This (This (That e))))))))
pattern Two e = This (This (This (This (This (This (This (That e)))))))
pattern Three e = This (This (This (This (This (This (That e))))))
pattern Four e = This (This (This (This (This (That e)))))
pattern Five e = This (This (This (This (That e))))
pattern Six e = This (This (This (That e)))
pattern Seven e = This (This (That e))
pattern Eight e = This (That e)
pattern Nine e = That e

type Caret = Unit `S` Unit `S` Unit `S` Unit `S` Unit `S` Unit

pattern Backspace e = This (This (This (This (This e)))) :: Caret
pattern Tab e = This (This (This (This (That e)))) :: Caret
pattern Newline e = This (This (This (That e))) :: Caret
pattern Escape e = This (This (That e)) :: Caret
pattern Space e = This (That e) :: Caret
pattern Delete e = That e :: Caret

-- Back Space ?
-- Back Slash ?

type Glyph = Unit # Letter `S` Unit # Digit `S` Unit # Symbol

pattern Letter x = This (This (Tagged x)) :: Glyph
pattern Digit x = This (That (Tagged x)) :: Glyph
pattern Symbol x = That (Tagged x) :: Glyph

type ASCII = Unit # Glyph `S` Unit # Caret

pattern Glyph e = This (Tagged e) :: ASCII
pattern Caret e = That (Tagged e) :: ASCII
