<html>
    <head>
        <title>Login/</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style1.csss">
        <style>
            @import url('https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900&display=swap'); //font-family: 'Roboto', sans-serif;
@import url('https://fonts.googleapis.com/css?family=Cinzel:400,700,900&display=swap');

html,
body {
    margin: 0;
    padding: 0;
    width: 100%;
    height: 100vh;
    font-family: 'Roboto', sans-serif;
    font-size: 16px !important;
}

$lightGreen : #34C6C2;
$darkGreen : #119CCE;

@mixin centerView {
    top: 50%;
    left: 50%;
    position: absolute;
    transform: translate(-50%, -50%);
}

.wrapper {
    width: 100%;
    height: 100vh;
    position: relative;
    overflow: hidden;

    .cardShadow {
        box-shadow: 0px 10px 18px 11px rgba(0, 0, 0, 0.2);
        width: 360px;
        height: 640px;
        top: 50%;
        left: 50%;
        position: absolute;
        -webkit-transform: translate(-50%, -50%);
        transform: translate(-50%, -50%);
        z-index: 1;
        overflow: hidden;

        .circle1 {
            position: absolute;
            width: 400px;
            height: 400px;
            background: linear-gradient(45deg, $darkGreen, $lightGreen);
            border-radius: 100%;
            top: -12%;
            left: -18%;

            &::before {
                position: absolute;
                content: "";
                width: 450px;
                height: 450px;
                background: rgba(255, 255, 255, 0.5);
                border-radius: 100%;
                left: -40%;
                top: 15%;
            }

            &::after {
                position: absolute;
                content: "";
                width: 350px;
                height: 350px;
                background: rgba(255, 255, 255, 0.3);
                border-radius: 100%;
                left: -3%;
                top: -12%;
            }
        }

        .circle2 {
            position: absolute;
            width: 400px;
            height: 400px;
            background: linear-gradient(45deg, $darkGreen, $lightGreen);
            border-radius: 100%;
            bottom: -12%;
            right: -80%;

            &::before {
                position: absolute;
                content: "";
                width: 350px;
                height: 350px;
                background: rgba(255, 255, 255, 0.3);
                border-radius: 100%;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
            }

            &::after {
                position: absolute;
                content: "";
                width: 300px;
                height: 300px;
                background: rgba(255, 255, 255, 0.3);
                border-radius: 100%;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
            }
        }

        .block1,
        .block2 {
            width: 80%;
            height: 80%;
            box-shadow: 0px 0px 8px rgba(0, 0, 0, 0.302);
            position: absolute;
            padding: 125px 30px;
            left: 50%;
            transform: translatex(-50%);
            top: 45px;
            border-radius: 15px;
            background: #fff;

            a.rotateBtn {
                background: $darkGreen;
                position: absolute;
                bottom: 0;
                right: 0;
                width: 35px;
                height: 35px;
                border-radius: 35px;
                line-height: 35px;
                text-align: center;
                box-shadow: inset 0px 0px 10px $lightGreen;

                ion-icon {
                    color: #fff;
                }
            }

            .logo {
                h1 {
                    color: #444;
                    text-align: center;
                    font-weight: 100;
                    margin-bottom: 15px;
                }
            }

            input {
                width: 100%;
                border: 0 none;
                border-bottom: 1px solid #444;
                height: 42px;
                margin-bottom: 16px;
                font-weight: 600;
                font-size: 14px;
                &:focus {
                    outline: 0 none;
                }
                &::placeholder{
                    color: #008ec1;
                }
            }
            input:-webkit-autofill, 
            input:-webkit-autofill:hover, 
            input:-webkit-autofill:focus, 
            input:-webkit-autofill:active 
            { 
                -webkit-animation: autofill 0s forwards; animation: autofill 0s forwards; } 
            @keyframes autofill { 100% { background: transparent; color: inherit; } } 
            @-webkit-keyframes autofill { 100% { background: transparent; color: inherit; } }

            a {
                text-decoration: none;
                color: #949494;
                font-weight: 600;
                font-size: 14px;
            }

            button {
                background: linear-gradient(45deg, $darkGreen, $lightGreen);
                display: block;
                border: 0 none;
                color: #fff;
                font-weight: 600;
                width: auto;
                border-radius: 30px;
                padding: 6px 20px;
                box-sizing: border-box;
                margin: 0 auto;
                margin-top: 25px;

                &:focus {
                    outline: 0 none;
                }

                &:hover {
                    background: $darkGreen;
                }
            }
        }
        .block2 {
            padding: 75px 30px;
            left: 50%;
            -webkit-transform: translatex(-50%);
            transform: translatex(-50%) rotate(180deg);
            top: 45px;
            transform-origin: bottom right;
            opacity: 0;
        }

    }


}
        </style>
        <script type="text/script">
            
TweenMax.from(".wrapper .cardShadow .circle1", 1.5, {
   scale:0.5,
   transformOrigin:'top left',
    opacity: 0,
    ease: Expo.easeInOut
 });

 TweenMax.from(".wrapper .cardShadow .circle2", 1.5, {
   scale:0.5,
   transformOrigin:'bottom right',
    opacity: 0,
    ease: Expo.easeInOut
 });

 TweenMax.staggerFrom(".block1 form > *",1, {
   y:-50,
   scale:0.5,
    opacity: 0,
    ease: Expo.easeInOut
 },0.2);



function rotateit(){
   
      TweenMax.to(".wrapper .cardShadow .block1", 1, {
         rotation:360,
         transformOrigin:'bottom right',
         opacity: 0,
         ease: Expo.easeInOut
      });
      TweenMax.to(".wrapper .cardShadow .block2", 1, {
         rotation:360,
         opacity: 1,
         ease: Expo.easeInOut
      });
      TweenMax.staggerFrom(".block2 form > *",1, {
         y:-50,
         delay:0.5,
         scale:0.5,
         opacity: 0,
         ease: Expo.easeInOut
       },0.2);
       TweenMax.from(".wrapper .cardShadow .circle1", 1.5, {
         scale:0.5,
         transformOrigin:'top left',
          opacity: 0,
          ease: Expo.easeInOut
       },'-=1');
      
       TweenMax.from(".wrapper .cardShadow .circle2", 1.5, {
         scale:0.5,
         transformOrigin:'bottom right',
          opacity: 0,
          ease: Expo.easeInOut
       },'-=1');
  

}

function rotateit1(){
   
      TweenMax.to(".wrapper .cardShadow .block2", 1, {
         rotation:180,
         opacity:0,
         ease: Expo.easeInOut
      });
      TweenMax.to(".wrapper .cardShadow .block1", 1, {
         rotation:0,
         opacity:1,
         ease: Expo.easeInOut
      });
      TweenMax.staggerFrom(".block1 form > *",1, {
         y:-50,
         delay:0.5,
         scale:0.5,
          opacity: 0,
          ease: Expo.easeInOut
       },0.2);
       TweenMax.from(".wrapper .cardShadow .circle1", 1.5, {
         scale:0.5,
         transformOrigin:'top left',
          opacity: 0,
          ease: Expo.easeInOut
       },'-=1');
      
       TweenMax.from(".wrapper .cardShadow .circle2", 1.5, {
         scale:0.5,
         transformOrigin:'bottom right',
          opacity: 0,
          ease: Expo.easeInOut
       },'-=1');
}


        </script>
    </head>
    <body bgcolor="lightcyan">
        <center>
        <h2>Credentials</h2>
        <form action="Login">
            User ID : <input type="text" name="uid"><br><br><br>
            Password: <input type="password" name="password"><br><br><br>
            <input type="submit" value="Login">
        </form >
        <form action="Registerpage.html">
             <input type="submit" value="Register">
        </form>
    </center>
    </body>
</html>