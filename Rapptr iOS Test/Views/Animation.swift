//
//  Animation.swift
//  Rapptr iOS Test
//
//  Created by Brian on 12/17/21.
//

import Foundation
import UIKit

extension AnimationViewController {
    

    
    //UIBezierPath data to create Rapptr logo from code
    
    
    // outerLogo Drawing
    var outerLogo : UIBezierPath {
        let outerLogoPath = UIBezierPath()
        outerLogoPath.move(to: CGPoint(x: 173.27, y: 226.88))
        outerLogoPath.addCurve(to: CGPoint(x: 116.34, y: 259.61), controlPoint1: CGPoint(x: 153.88, y: 238.07), controlPoint2: CGPoint(x: 135.15, y: 248.88))
        outerLogoPath.addCurve(to: CGPoint(x: 112.67, y: 259.18), controlPoint1: CGPoint(x: 115.47, y: 260.11), controlPoint2: CGPoint(x: 113.68, y: 259.76))
        outerLogoPath.addCurve(to: CGPoint(x: 46.67, y: 221.18), controlPoint1: CGPoint(x: 90.63, y: 246.57), controlPoint2: CGPoint(x: 68.63, y: 233.91))
        outerLogoPath.addCurve(to: CGPoint(x: 4.99, y: 197.18), controlPoint1: CGPoint(x: 32.78, y: 213.18), controlPoint2: CGPoint(x: 18.92, y: 205.11))
        outerLogoPath.addCurve(to: CGPoint(x: 1.99, y: 192.29), controlPoint1: CGPoint(x: 2.99, y: 196.01), controlPoint2: CGPoint(x: 1.99, y: 194.8))
        outerLogoPath.addCurve(to: CGPoint(x: 1.99, y: 68.44), controlPoint1: CGPoint(x: 2.08, y: 151), controlPoint2: CGPoint(x: 2.08, y: 109.72))
        outerLogoPath.addCurve(to: CGPoint(x: 4.65, y: 63.72), controlPoint1: CGPoint(x: 1.79, y: 66.46), controlPoint2: CGPoint(x: 2.85, y: 64.57))
        outerLogoPath.addCurve(to: CGPoint(x: 111.38, y: 2.09), controlPoint1: CGPoint(x: 40.28, y: 43.26), controlPoint2: CGPoint(x: 75.85, y: 22.72))
        outerLogoPath.addCurve(to: CGPoint(x: 118.58, y: 2.24), controlPoint1: CGPoint(x: 114.16, y: 0.47), controlPoint2: CGPoint(x: 116.01, y: 0.75))
        outerLogoPath.addCurve(to: CGPoint(x: 224.99, y: 63.68), controlPoint1: CGPoint(x: 154.01, y: 22.79), controlPoint2: CGPoint(x: 189.48, y: 43.27))
        outerLogoPath.addCurve(to: CGPoint(x: 227.76, y: 68.33), controlPoint1: CGPoint(x: 226.81, y: 64.48), controlPoint2: CGPoint(x: 227.92, y: 66.35))
        outerLogoPath.addCurve(to: CGPoint(x: 227.76, y: 192.53), controlPoint1: CGPoint(x: 227.68, y: 109.73), controlPoint2: CGPoint(x: 227.68, y: 151.13))
        outerLogoPath.addCurve(to: CGPoint(x: 225.21, y: 196.96), controlPoint1: CGPoint(x: 227.94, y: 194.4), controlPoint2: CGPoint(x: 226.91, y: 196.17))
        outerLogoPath.addCurve(to: CGPoint(x: 190.21, y: 217.13), controlPoint1: CGPoint(x: 213.51, y: 203.6), controlPoint2: CGPoint(x: 201.87, y: 210.36))
        outerLogoPath.addCurve(to: CGPoint(x: 185.46, y: 217.27), controlPoint1: CGPoint(x: 188.82, y: 218.19), controlPoint2: CGPoint(x: 186.91, y: 218.25))
        outerLogoPath.addCurve(to: CGPoint(x: 69.04, y: 150.04), controlPoint1: CGPoint(x: 146.68, y: 194.81), controlPoint2: CGPoint(x: 107.87, y: 172.4))
        outerLogoPath.addCurve(to: CGPoint(x: 66.9, y: 148.47), controlPoint1: CGPoint(x: 68.58, y: 149.78), controlPoint2: CGPoint(x: 68.18, y: 149.42))
        outerLogoPath.addLine(to: CGPoint(x: 70.83, y: 148.47))
        outerLogoPath.addCurve(to: CGPoint(x: 125.66, y: 148.54), controlPoint1: CGPoint(x: 89.1, y: 148.47), controlPoint2: CGPoint(x: 107.38, y: 148.47))
        outerLogoPath.addCurve(to: CGPoint(x: 131.24, y: 150.03), controlPoint1: CGPoint(x: 127.61, y: 148.57), controlPoint2: CGPoint(x: 129.53, y: 149.08))
        outerLogoPath.addCurve(to: CGPoint(x: 190.24, y: 184.03), controlPoint1: CGPoint(x: 150.96, y: 161.28), controlPoint2: CGPoint(x: 170.63, y: 172.62))
        outerLogoPath.addCurve(to: CGPoint(x: 195.84, y: 183.9), controlPoint1: CGPoint(x: 192.4, y: 185.29), controlPoint2: CGPoint(x: 194.05, y: 185.47))
        outerLogoPath.addCurve(to: CGPoint(x: 201.79, y: 178.34), controlPoint1: CGPoint(x: 197.84, y: 182.11), controlPoint2: CGPoint(x: 201.79, y: 182.34))
        outerLogoPath.addCurve(to: CGPoint(x: 201.65, y: 82.22), controlPoint1: CGPoint(x: 201.79, y: 146.34), controlPoint2: CGPoint(x: 201.79, y: 114.26))
        outerLogoPath.addCurve(to: CGPoint(x: 198.77, y: 78.5), controlPoint1: CGPoint(x: 201.65, y: 80.95), controlPoint2: CGPoint(x: 200.06, y: 79.22))
        outerLogoPath.addCurve(to: CGPoint(x: 152.26, y: 51.62), controlPoint1: CGPoint(x: 183.31, y: 69.5), controlPoint2: CGPoint(x: 167.77, y: 60.56))
        outerLogoPath.addCurve(to: CGPoint(x: 117.62, y: 31.62), controlPoint1: CGPoint(x: 140.7, y: 44.96), controlPoint2: CGPoint(x: 129.12, y: 38.34))
        outerLogoPath.addCurve(to: CGPoint(x: 112.23, y: 31.56), controlPoint1: CGPoint(x: 116.03, y: 30.44), controlPoint2: CGPoint(x: 113.85, y: 30.41))
        outerLogoPath.addCurve(to: CGPoint(x: 31.33, y: 78.19), controlPoint1: CGPoint(x: 85.3, y: 47.17), controlPoint2: CGPoint(x: 58.34, y: 62.72))
        outerLogoPath.addCurve(to: CGPoint(x: 27.9, y: 83.9), controlPoint1: CGPoint(x: 29.01, y: 79.52), controlPoint2: CGPoint(x: 27.88, y: 80.96))
        outerLogoPath.addCurve(to: CGPoint(x: 27.9, y: 176.9), controlPoint1: CGPoint(x: 28.03, y: 114.89), controlPoint2: CGPoint(x: 28.03, y: 145.89))
        outerLogoPath.addCurve(to: CGPoint(x: 31.34, y: 182.6), controlPoint1: CGPoint(x: 27.9, y: 179.85), controlPoint2: CGPoint(x: 29.02, y: 181.27))
        outerLogoPath.addCurve(to: CGPoint(x: 112.24, y: 229.24), controlPoint1: CGPoint(x: 58.33, y: 198.09), controlPoint2: CGPoint(x: 85.3, y: 213.64))
        outerLogoPath.addCurve(to: CGPoint(x: 117.62, y: 229.18), controlPoint1: CGPoint(x: 113.86, y: 230.39), controlPoint2: CGPoint(x: 116.03, y: 230.37))
        outerLogoPath.addCurve(to: CGPoint(x: 145.3, y: 213.24), controlPoint1: CGPoint(x: 126.78, y: 223.76), controlPoint2: CGPoint(x: 136.01, y: 218.45))
        outerLogoPath.addCurve(to: CGPoint(x: 148.71, y: 212.86), controlPoint1: CGPoint(x: 146.33, y: 212.63), controlPoint2: CGPoint(x: 147.57, y: 212.5))
        outerLogoPath.addCurve(to: CGPoint(x: 173.27, y: 226.88), controlPoint1: CGPoint(x: 156.76, y: 217.3), controlPoint2: CGPoint(x: 164.72, y: 221.95))
        outerLogoPath.close()
        
        return outerLogoPath
    }
    
    
    // innerLogo Drawing
    var innerLogo : UIBezierPath {
        let innerLogoPath = UIBezierPath()
        innerLogoPath.move(to: CGPoint(x: 151.23, y: 141.11))
        innerLogoPath.addCurve(to: CGPoint(x: 155.43, y: 124.59), controlPoint1: CGPoint(x: 155.18, y: 136.02), controlPoint2: CGPoint(x: 157.3, y: 130.75))
        innerLogoPath.addCurve(to: CGPoint(x: 139.99, y: 113.18), controlPoint1: CGPoint(x: 153.52, y: 117.69), controlPoint2: CGPoint(x: 147.15, y: 112.98))
        innerLogoPath.addCurve(to: CGPoint(x: 106.99, y: 113.08), controlPoint1: CGPoint(x: 128.99, y: 113.18), controlPoint2: CGPoint(x: 117.99, y: 113.29))
        innerLogoPath.addCurve(to: CGPoint(x: 99.84, y: 111.08), controlPoint1: CGPoint(x: 104.48, y: 112.99), controlPoint2: CGPoint(x: 102.03, y: 112.31))
        innerLogoPath.addCurve(to: CGPoint(x: 49.77, y: 82.25), controlPoint1: CGPoint(x: 83.09, y: 101.55), controlPoint2: CGPoint(x: 66.44, y: 91.88))
        innerLogoPath.addCurve(to: CGPoint(x: 48.59, y: 81.25), controlPoint1: CGPoint(x: 49.36, y: 81.94), controlPoint2: CGPoint(x: 48.96, y: 81.61))
        innerLogoPath.addCurve(to: CGPoint(x: 51.44, y: 80.94), controlPoint1: CGPoint(x: 49.53, y: 81.1), controlPoint2: CGPoint(x: 50.49, y: 80.99))
        innerLogoPath.addCurve(to: CGPoint(x: 139.24, y: 81.05), controlPoint1: CGPoint(x: 80.7, y: 80.94), controlPoint2: CGPoint(x: 109.98, y: 80.57))
        innerLogoPath.addCurve(to: CGPoint(x: 185.92, y: 118.68), controlPoint1: CGPoint(x: 162.24, y: 81.43), controlPoint2: CGPoint(x: 180.55, y: 95.95))
        innerLogoPath.addCurve(to: CGPoint(x: 177.92, y: 156.68), controlPoint1: CGPoint(x: 189, y: 131.68), controlPoint2: CGPoint(x: 186.54, y: 146.04))
        innerLogoPath.addLine(to: CGPoint(x: 151.23, y: 141.11))
        innerLogoPath.close()
        
        
        return innerLogoPath
    }
    
    
    // rShape Drawing
    var rShape : UIBezierPath {
        let rShapePath = UIBezierPath()
        rShapePath.move(to: CGPoint(x: 321.42, y: 92.88))
        rShapePath.addCurve(to: CGPoint(x: 383.81, y: 93.12), controlPoint1: CGPoint(x: 342.42, y: 92.88), controlPoint2: CGPoint(x: 363.16, y: 92.14))
        rShapePath.addCurve(to: CGPoint(x: 398.17, y: 124.18), controlPoint1: CGPoint(x: 398.99, y: 93.84), controlPoint2: CGPoint(x: 406.64, y: 111.36))
        rShapePath.addCurve(to: CGPoint(x: 390.95, y: 130.86), controlPoint1: CGPoint(x: 396.46, y: 126.78), controlPoint2: CGPoint(x: 393.5, y: 128.55))
        rShapePath.addCurve(to: CGPoint(x: 400.09, y: 150.96), controlPoint1: CGPoint(x: 398.95, y: 134.86), controlPoint2: CGPoint(x: 400.5, y: 142.45))
        rShapePath.addCurve(to: CGPoint(x: 400.09, y: 163.65), controlPoint1: CGPoint(x: 399.88, y: 155.12), controlPoint2: CGPoint(x: 400.09, y: 159.3))
        rShapePath.addLine(to: CGPoint(x: 389.15, y: 163.65))
        rShapePath.addCurve(to: CGPoint(x: 389.15, y: 148.91), controlPoint1: CGPoint(x: 389.15, y: 158.65), controlPoint2: CGPoint(x: 389.15, y: 153.78))
        rShapePath.addCurve(to: CGPoint(x: 375.32, y: 135.07), controlPoint1: CGPoint(x: 389.06, y: 138.91), controlPoint2: CGPoint(x: 385.38, y: 135.14))
        rShapePath.addCurve(to: CGPoint(x: 331.86, y: 135.07), controlPoint1: CGPoint(x: 360.94, y: 134.97), controlPoint2: CGPoint(x: 346.55, y: 135.07))
        rShapePath.addLine(to: CGPoint(x: 331.86, y: 163.6))
        rShapePath.addLine(to: CGPoint(x: 321.42, y: 163.6))
        rShapePath.addLine(to: CGPoint(x: 321.42, y: 92.88))
        rShapePath.close()
        rShapePath.move(to: CGPoint(x: 331.9, y: 102.06))
        rShapePath.addLine(to: CGPoint(x: 331.9, y: 124.61))
        rShapePath.addCurve(to: CGPoint(x: 380.55, y: 124.51), controlPoint1: CGPoint(x: 348.26, y: 124.61), controlPoint2: CGPoint(x: 364.41, y: 124.83))
        rShapePath.addCurve(to: CGPoint(x: 390.87, y: 112.23), controlPoint1: CGPoint(x: 387.68, y: 124.37), controlPoint2: CGPoint(x: 390.9, y: 119.99))
        rShapePath.addCurve(to: CGPoint(x: 380.5, y: 102.15), controlPoint1: CGPoint(x: 390.87, y: 105.79), controlPoint2: CGPoint(x: 387.68, y: 102.23))
        rShapePath.addCurve(to: CGPoint(x: 331.9, y: 102.06), controlPoint1: CGPoint(x: 364.36, y: 101.88), controlPoint2: CGPoint(x: 348.22, y: 102.06))
        rShapePath.close()
        return rShapePath
    }
    
    
    //// rShapeTwo Drawing
    var rShapeTwo : UIBezierPath {
        let rShapeTwoPath = UIBezierPath()
        rShapeTwoPath.move(to: CGPoint(x: 968.5, y: 132.38))
        rShapeTwoPath.addCurve(to: CGPoint(x: 978.57, y: 150.55), controlPoint1: CGPoint(x: 976.2, y: 136.38), controlPoint2: CGPoint(x: 978.77, y: 142.68))
        rShapeTwoPath.addCurve(to: CGPoint(x: 978.57, y: 165.55), controlPoint1: CGPoint(x: 978.45, y: 155.44), controlPoint2: CGPoint(x: 978.57, y: 160.34))
        rShapeTwoPath.addLine(to: CGPoint(x: 967.49, y: 165.55))
        rShapeTwoPath.addCurve(to: CGPoint(x: 967.49, y: 149.55), controlPoint1: CGPoint(x: 967.49, y: 160.22), controlPoint2: CGPoint(x: 967.58, y: 154.86))
        rShapeTwoPath.addCurve(to: CGPoint(x: 955.84, y: 137.27), controlPoint1: CGPoint(x: 967.32, y: 141.42), controlPoint2: CGPoint(x: 963.95, y: 137.45))
        rShapeTwoPath.addCurve(to: CGPoint(x: 910.24, y: 137.18), controlPoint1: CGPoint(x: 940.76, y: 136.94), controlPoint2: CGPoint(x: 925.66, y: 137.18))
        rShapeTwoPath.addLine(to: CGPoint(x: 910.24, y: 165.67))
        rShapeTwoPath.addLine(to: CGPoint(x: 899.98, y: 165.67))
        rShapeTwoPath.addLine(to: CGPoint(x: 899.98, y: 94.47))
        rShapeTwoPath.addCurve(to: CGPoint(x: 902.92, y: 94.32), controlPoint1: CGPoint(x: 900.9, y: 94.47), controlPoint2: CGPoint(x: 901.91, y: 94.32))
        rShapeTwoPath.addCurve(to: CGPoint(x: 954.58, y: 94.4), controlPoint1: CGPoint(x: 920.14, y: 94.32), controlPoint2: CGPoint(x: 937.36, y: 94.18))
        rShapeTwoPath.addCurve(to: CGPoint(x: 968.02, y: 96.4), controlPoint1: CGPoint(x: 959.13, y: 94.44), controlPoint2: CGPoint(x: 963.65, y: 95.12))
        rShapeTwoPath.addCurve(to: CGPoint(x: 979.28, y: 111.66), controlPoint1: CGPoint(x: 975.15, y: 98.55), controlPoint2: CGPoint(x: 978.96, y: 104.2))
        rShapeTwoPath.addCurve(to: CGPoint(x: 979.28, y: 115.87), controlPoint1: CGPoint(x: 979.34, y: 113.06), controlPoint2: CGPoint(x: 979.28, y: 114.47))
        rShapeTwoPath.addCurve(to: CGPoint(x: 968.5, y: 132.38), controlPoint1: CGPoint(x: 979.29, y: 123.42), controlPoint2: CGPoint(x: 976.57, y: 129.3))
        rShapeTwoPath.close()
        rShapeTwoPath.move(to: CGPoint(x: 910.26, y: 126.89))
        rShapeTwoPath.addLine(to: CGPoint(x: 914.17, y: 126.89))
        rShapeTwoPath.addCurve(to: CGPoint(x: 951.4, y: 126.89), controlPoint1: CGPoint(x: 926.58, y: 126.89), controlPoint2: CGPoint(x: 938.99, y: 126.89))
        rShapeTwoPath.addCurve(to: CGPoint(x: 959.81, y: 126.49), controlPoint1: CGPoint(x: 954.21, y: 126.93), controlPoint2: CGPoint(x: 957.02, y: 126.79))
        rShapeTwoPath.addCurve(to: CGPoint(x: 968.56, y: 119.99), controlPoint1: CGPoint(x: 963.89, y: 125.98), controlPoint2: CGPoint(x: 967.45, y: 124.18))
        rShapeTwoPath.addCurve(to: CGPoint(x: 957.79, y: 103.99), controlPoint1: CGPoint(x: 971.08, y: 110.53), controlPoint2: CGPoint(x: 968.61, y: 104.56))
        rShapeTwoPath.addCurve(to: CGPoint(x: 955.33, y: 103.99), controlPoint1: CGPoint(x: 956.97, y: 103.99), controlPoint2: CGPoint(x: 956.15, y: 103.99))
        rShapeTwoPath.addCurve(to: CGPoint(x: 912.82, y: 103.99), controlPoint1: CGPoint(x: 941.16, y: 103.99), controlPoint2: CGPoint(x: 926.99, y: 103.99))
        rShapeTwoPath.addCurve(to: CGPoint(x: 910.26, y: 104.2), controlPoint1: CGPoint(x: 911.94, y: 103.99), controlPoint2: CGPoint(x: 911.06, y: 104.13))
        rShapeTwoPath.addLine(to: CGPoint(x: 910.26, y: 126.89))
        rShapeTwoPath.close()
        
        return rShapeTwoPath
    }
    
    
    
    //// pShapeTwo Drawing
    var pShapeTwo : UIBezierPath {
        let pShapeTwoPath = UIBezierPath()
        pShapeTwoPath.move(to: CGPoint(x: 680.09, y: 94.88))
        pShapeTwoPath.addCurve(to: CGPoint(x: 734.86, y: 94.99), controlPoint1: CGPoint(x: 698.57, y: 94.88), controlPoint2: CGPoint(x: 716.72, y: 94.76))
        pShapeTwoPath.addCurve(to: CGPoint(x: 744.63, y: 97.46), controlPoint1: CGPoint(x: 738.14, y: 95.04), controlPoint2: CGPoint(x: 741.53, y: 96.22))
        pShapeTwoPath.addCurve(to: CGPoint(x: 754.38, y: 110.46), controlPoint1: CGPoint(x: 750.18, y: 99.46), controlPoint2: CGPoint(x: 754.01, y: 104.57))
        pShapeTwoPath.addCurve(to: CGPoint(x: 754.38, y: 123.37), controlPoint1: CGPoint(x: 754.82, y: 114.75), controlPoint2: CGPoint(x: 754.82, y: 119.08))
        pShapeTwoPath.addCurve(to: CGPoint(x: 738.14, y: 140.37), controlPoint1: CGPoint(x: 753.23, y: 133.23), controlPoint2: CGPoint(x: 747.99, y: 138.69))
        pShapeTwoPath.addCurve(to: CGPoint(x: 724.51, y: 141.37), controlPoint1: CGPoint(x: 733.63, y: 141.06), controlPoint2: CGPoint(x: 729.07, y: 141.4))
        pShapeTwoPath.addCurve(to: CGPoint(x: 689.83, y: 141.37), controlPoint1: CGPoint(x: 713.04, y: 141.5), controlPoint2: CGPoint(x: 701.57, y: 141.37))
        pShapeTwoPath.addLine(to: CGPoint(x: 689.83, y: 165.48))
        pShapeTwoPath.addLine(to: CGPoint(x: 680.05, y: 165.48))
        pShapeTwoPath.addLine(to: CGPoint(x: 680.09, y: 94.88))
        pShapeTwoPath.close()
        pShapeTwoPath.move(to: CGPoint(x: 689.86, y: 103.96))
        pShapeTwoPath.addLine(to: CGPoint(x: 689.86, y: 132.05))
        pShapeTwoPath.addCurve(to: CGPoint(x: 718.42, y: 132.05), controlPoint1: CGPoint(x: 699.5, y: 132.05), controlPoint2: CGPoint(x: 708.96, y: 132.12))
        pShapeTwoPath.addCurve(to: CGPoint(x: 733.84, y: 131.38), controlPoint1: CGPoint(x: 723.56, y: 132), controlPoint2: CGPoint(x: 728.73, y: 131.93))
        pShapeTwoPath.addCurve(to: CGPoint(x: 744.68, y: 120.02), controlPoint1: CGPoint(x: 741.13, y: 130.6), controlPoint2: CGPoint(x: 744.07, y: 127.31))
        pShapeTwoPath.addCurve(to: CGPoint(x: 744.78, y: 115.12), controlPoint1: CGPoint(x: 744.83, y: 118.39), controlPoint2: CGPoint(x: 744.87, y: 116.75))
        pShapeTwoPath.addCurve(to: CGPoint(x: 735.49, y: 104.85), controlPoint1: CGPoint(x: 744.37, y: 108.7), controlPoint2: CGPoint(x: 741.94, y: 105.65))
        pShapeTwoPath.addCurve(to: CGPoint(x: 717.64, y: 104.02), controlPoint1: CGPoint(x: 729.56, y: 104.25), controlPoint2: CGPoint(x: 723.6, y: 103.98))
        pShapeTwoPath.addCurve(to: CGPoint(x: 689.86, y: 103.96), controlPoint1: CGPoint(x: 708.42, y: 103.87), controlPoint2: CGPoint(x: 699.2, y: 103.96))
        pShapeTwoPath.addLine(to: CGPoint(x: 689.86, y: 103.96))
        pShapeTwoPath.close()
        
        return pShapeTwoPath
        
    }
    
    
    //// pShape Drawing
    var pShape : UIBezierPath {
        let pShapePath = UIBezierPath()
        pShapePath.move(to: CGPoint(x: 570.74, y: 141.48))
        pShapePath.addLine(to: CGPoint(x: 570.74, y: 165.66))
        pShapePath.addLine(to: CGPoint(x: 561.19, y: 165.66))
        pShapePath.addLine(to: CGPoint(x: 561.19, y: 94.47))
        pShapePath.addCurve(to: CGPoint(x: 564.07, y: 94.32), controlPoint1: CGPoint(x: 562.06, y: 94.47), controlPoint2: CGPoint(x: 563.07, y: 94.32))
        pShapePath.addCurve(to: CGPoint(x: 606.59, y: 94.41), controlPoint1: CGPoint(x: 578.25, y: 94.32), controlPoint2: CGPoint(x: 592.42, y: 94.13))
        pShapePath.addCurve(to: CGPoint(x: 622.87, y: 96.47), controlPoint1: CGPoint(x: 612.08, y: 94.47), controlPoint2: CGPoint(x: 617.54, y: 95.16))
        pShapePath.addCurve(to: CGPoint(x: 635.58, y: 112.47), controlPoint1: CGPoint(x: 631.08, y: 98.57), controlPoint2: CGPoint(x: 635.06, y: 104.01))
        pShapePath.addCurve(to: CGPoint(x: 635.58, y: 121.91), controlPoint1: CGPoint(x: 635.79, y: 115.61), controlPoint2: CGPoint(x: 635.79, y: 118.77))
        pShapePath.addCurve(to: CGPoint(x: 618.58, y: 140.53), controlPoint1: CGPoint(x: 634.8, y: 132.73), controlPoint2: CGPoint(x: 629.35, y: 138.79))
        pShapePath.addCurve(to: CGPoint(x: 605.65, y: 141.46), controlPoint1: CGPoint(x: 614.3, y: 141.16), controlPoint2: CGPoint(x: 609.98, y: 141.47))
        pShapePath.addCurve(to: CGPoint(x: 570.74, y: 141.48), controlPoint1: CGPoint(x: 594.21, y: 141.56), controlPoint2: CGPoint(x: 582.73, y: 141.48))
        pShapePath.close()
        pShapePath.move(to: CGPoint(x: 571.01, y: 104.63))
        pShapePath.addLine(to: CGPoint(x: 571.01, y: 132.05))
        pShapePath.addCurve(to: CGPoint(x: 597.94, y: 132.05), controlPoint1: CGPoint(x: 580.16, y: 132.05), controlPoint2: CGPoint(x: 589.01, y: 132.12))
        pShapePath.addCurve(to: CGPoint(x: 614.75, y: 131.38), controlPoint1: CGPoint(x: 603.55, y: 131.99), controlPoint2: CGPoint(x: 609.18, y: 131.95))
        pShapePath.addCurve(to: CGPoint(x: 625.75, y: 119.38), controlPoint1: CGPoint(x: 622.28, y: 130.62), controlPoint2: CGPoint(x: 625.44, y: 126.91))
        pShapePath.addCurve(to: CGPoint(x: 625.75, y: 116.23), controlPoint1: CGPoint(x: 625.75, y: 118.38), controlPoint2: CGPoint(x: 625.8, y: 117.28))
        pShapePath.addCurve(to: CGPoint(x: 615.91, y: 104.82), controlPoint1: CGPoint(x: 625.67, y: 108.82), controlPoint2: CGPoint(x: 623.3, y: 105.12))
        pShapePath.addCurve(to: CGPoint(x: 571.01, y: 104.63), controlPoint1: CGPoint(x: 601, y: 104.2), controlPoint2: CGPoint(x: 586.04, y: 104.63))
        pShapePath.close()
        return pShapePath
    }
    
    
    //// aShape Drawing
    var aShape : UIBezierPath {
        let aShapePath = UIBezierPath()
        aShapePath.move(to: CGPoint(x: 523.4, y: 165.78))
        aShapePath.addCurve(to: CGPoint(x: 513.53, y: 165.7), controlPoint1: CGPoint(x: 519.74, y: 165.78), controlPoint2: CGPoint(x: 516.63, y: 165.89))
        aShapePath.addCurve(to: CGPoint(x: 511.26, y: 164.07), controlPoint1: CGPoint(x: 512.58, y: 165.5), controlPoint2: CGPoint(x: 511.76, y: 164.91))
        aShapePath.addCurve(to: CGPoint(x: 505.94, y: 154.63), controlPoint1: CGPoint(x: 509.42, y: 160.97), controlPoint2: CGPoint(x: 507.92, y: 157.64))
        aShapePath.addCurve(to: CGPoint(x: 502.25, y: 152.47), controlPoint1: CGPoint(x: 505.07, y: 153.42), controlPoint2: CGPoint(x: 503.73, y: 152.64))
        aShapePath.addCurve(to: CGPoint(x: 454.5, y: 152.47), controlPoint1: CGPoint(x: 486.33, y: 152.33), controlPoint2: CGPoint(x: 470.41, y: 152.33))
        aShapePath.addCurve(to: CGPoint(x: 451.11, y: 154.47), controlPoint1: CGPoint(x: 453.14, y: 152.65), controlPoint2: CGPoint(x: 451.92, y: 153.37))
        aShapePath.addCurve(to: CGPoint(x: 446.88, y: 162.1), controlPoint1: CGPoint(x: 449.43, y: 156.86), controlPoint2: CGPoint(x: 448.01, y: 159.41))
        aShapePath.addCurve(to: CGPoint(x: 440.43, y: 165.79), controlPoint1: CGPoint(x: 445.62, y: 165.2), controlPoint2: CGPoint(x: 443.62, y: 166.19))
        aShapePath.addCurve(to: CGPoint(x: 433.65, y: 165.78), controlPoint1: CGPoint(x: 438.17, y: 165.66), controlPoint2: CGPoint(x: 435.91, y: 165.65))
        aShapePath.addCurve(to: CGPoint(x: 435.51, y: 162.31), controlPoint1: CGPoint(x: 434.36, y: 164.45), controlPoint2: CGPoint(x: 434.93, y: 163.37))
        aShapePath.addCurve(to: CGPoint(x: 471.08, y: 97.66), controlPoint1: CGPoint(x: 447.38, y: 140.77), controlPoint2: CGPoint(x: 459.3, y: 119.25))
        aShapePath.addCurve(to: CGPoint(x: 477.01, y: 94.21), controlPoint1: CGPoint(x: 472.48, y: 95.1), controlPoint2: CGPoint(x: 473.95, y: 93.78))
        aShapePath.addCurve(to: CGPoint(x: 484.09, y: 94.27), controlPoint1: CGPoint(x: 479.37, y: 94.39), controlPoint2: CGPoint(x: 481.73, y: 94.41))
        aShapePath.addLine(to: CGPoint(x: 523.4, y: 165.78))
        aShapePath.close()
        aShapePath.move(to: CGPoint(x: 499.4, y: 142.6))
        aShapePath.addLine(to: CGPoint(x: 478.5, y: 104.6))
        aShapePath.addLine(to: CGPoint(x: 457.5, y: 142.6))
        aShapePath.addLine(to: CGPoint(x: 499.4, y: 142.6))
        aShapePath.close()
        
        return aShapePath
    }
    
    
    //// tShape Drawing
    var tShape : UIBezierPath {
        let tShapePath = UIBezierPath()
        tShapePath.move(to: CGPoint(x: 818.65, y: 103.6))
        tShapePath.addLine(to: CGPoint(x: 783.95, y: 103.6))
        tShapePath.addLine(to: CGPoint(x: 783.95, y: 94.52))
        tShapePath.addLine(to: CGPoint(x: 863.04, y: 94.52))
        tShapePath.addLine(to: CGPoint(x: 863.04, y: 103.52))
        tShapePath.addLine(to: CGPoint(x: 828.51, y: 103.52))
        tShapePath.addLine(to: CGPoint(x: 828.51, y: 165.78))
        tShapePath.addLine(to: CGPoint(x: 818.65, y: 165.78))
        tShapePath.addLine(to: CGPoint(x: 818.65, y: 103.6))
        tShapePath.close()
        return tShapePath
    }
    
}
