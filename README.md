EmoticonParticles
=================

create particle effects on UIView's with any character including emoticons


Demo
----

![alt tag](https://raw.githubusercontent.com/yemeksepeti/EmoticonParticles/master/demo.gif)


Usage
-----

create your particle string

        let emoticons = "🍕🍔🍟🍗🍖🍝🍣🍱🍚🍢🍞🍳🍦🍨🍩🍮🎂🍰☕YEMEKSEPETİ"


and create `EmoticonsParticleView` with it

        let particle = EmoticonParticleView (frame: view.frame, emoticons: emoticons)
        view.addSubview(particle)

thats it !


CAEmitterLayer
--------------

you can change `setupEmiterLayer` func in `EmoticonParticleView.swift` to create different particle effects.
