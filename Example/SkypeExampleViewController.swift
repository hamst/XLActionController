//  SkypeExampleViewController.swift
//  XLActionController ( https://github.com/xmartlabs/XLActionController )
//
//  Copyright (c) 2015 Xmartlabs ( http://xmartlabs.com )
//
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import UIKit
import XLActionController

class SkypeExampleViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    @IBAction func backButtonDidTouch(_ sender: UIButton) {
        _ = navigationController?.popViewController(animated: true)
    }

    @IBAction func tapGestureDidRecognize(_ sender: UITapGestureRecognizer) {
        let actionController = SkypeActionController()
        actionController.addAction(Action("Take photo", style: .default, handler: { action in
        }))
        actionController.addAction(Action("Choose existing photo", style: .default, handler: { action in
        }))
        actionController.addAction(Action("Remove profile picture", style: .default, handler: { action in
        }))
        actionController.addAction(Action("Cancel", style: .cancel, handler: nil))

        present(actionController, animated: true, completion: nil)
    }

}
