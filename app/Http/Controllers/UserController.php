<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\User;
use App\Models\Type;
use App\Models\Book;
use App\Models\Transaction;
use App\Models\Account;
use App\Models\Order;
use App\Models\Recharge;

use Auth;
use Image;

class UserController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    //add book to user card
    public function book_card($id){
        $book = Book::find($id);
        if(Auth::user()->id == $book->user){
            return redirect()->route('user.book_order')->with('error', 'We could not place your order');;
        }
        else{
            $user_id = Auth::user()->id;
            if(Order::where('user_id', '=', $user_id)->exists()){
                $orders = Order::all();
                foreach($orders as $order){
                    if($order->book_id == $book->id){
                        $ab = true;
                        return redirect()->route('user.book_order')->with('error', 'You have already order this book');
                    }else{
                        $ab = false;
                    }
                }
                if($ab == false){
                    $order = new Order;
                    $order->user_id = Auth::user()->id;
                    $order->book_id = $book->id;
                    $order->status = false;
                    $order->save();
                    return redirect()->route('user.book_order')->with('success', 'Your Order is Placed Successfully');
                }
            }else{
                $order = new Order;
                $order->user_id = Auth::user()->id;
                $order->book_id = $book->id;
                $order->status = false;
                $order->save();
                return redirect()->route('user.book_order')->with('success', 'Your Order is Placed Successfully');
            }    
        }
    }
    public function book_order(){
        $orders = Order::where('user_id', Auth::user()->id )->get();
        return view('user.order_index', compact('orders'));
    }
    public function books_index(){
        $books = Book::orderBy('created_at', 'desc')->where('confirmed', true)->paginate(6);
        $types = Type::all();
        return view('user.books_index', compact('books', 'types'));
    }
    public function book_index(){
        $user = Auth::user()->id;
        $books = Book::where('user', $user)->paginate(10);
        return view('user.book_index', compact('books'));
    }
    public function book_show($id){
        $book = Book::find($id);
        return view('user.book_show', compact('book'));
    }
    public function book_edit($id){
        $book = Book::find($id);
        $types = Type::all();
        return view('user.book_edit', compact('book', 'types'));
    }
    public function book_update(Request $request, $id){
        $book = Book::find($id);
        $oldImg = $book->image;
        $book_user = $book->user;
        $newC = $request->input('category');
        $oldC = $book->category;
        if(Auth::user()->id == $book_user){
            $this->validate($request, [
                'name' => 'required',
                'price' => 'required',
            ]);
            //image validation
            if($request->hasFile('image')){
                $file = $request->file('image');
                $extension = $file->getClientOriginalExtension();
                $file_name = time().'.'.$extension;
                Image::make($file)->resize(700, 400)->save(public_path('/contents/images/book/'.$file_name));
                if($oldImg !== 'no_image.png'){
                    File::delete(public_path('/contents/images/book/'.$oldImg));
                }
            }else{
                $file_name = $oldImg;
            }
            //category validation
            if($newC !== 'null'){
                $category = $newC;
            }else{
                $category = $oldC;
            }
            $book->name = $request->input('name');
            $book->author = $request->input('author');
            $book->price = $request->input('price');
            $book->description = $request->input('description');
            $book->category = $category;
            $book->image = $file_name;
            $book->save();
            return redirect()->route('user.book_index')->with('warning', 'Successfully Updated');

        }else{
            return redirect()->route('user.book_index')->with('error', 'Operation Failed');
        }
    }
    public function book_create(){
        if(Auth::user()->config == 0){
            $types = Type::all();
            return view('user.book_create', compact('types'));
        }else{
            return redirect()->route('home')->with('error', 'You are not registered by admin');
        }
    }
    public function book_store(Request $request){
        $this->validate($request, [
            'name' => 'required',
            'price' => 'required',
            'category' => 'required'
        ]);
        if($request->hasFile('image')){
            $file = $request->file('image');
            $extension = $file->getClientOriginalExtension();
            $file_name = time().'.'.$extension;
            Image::make($file)->resize(700, 400)->save(public_path('/contents/images/book/'.$file_name));
        }else{
            $file_name = 'no_image.png';
        }

        $book = new Book;
        $book->name = $request->input('name');
        $book->author = $request->input('author');
        $book->price = $request->input('price');
        $book->category = $request->input('category');
        $book->description = $request->input('description');
        $book->image = $file_name;
        $book->user = Auth::user()->id;
        $book->confirmed = false;
        $book->save();
        //effect to the main account balance
        /*$accounts = Account::all();
        foreach($accounts as $acc){
            if($acc->user_id == Auth::user()->id){
                if($transaction->credit == true){
                    $acc->balance += $book->price;
                    $acc->save();
                }elseif($transaction->debit == true){
                    $acc->balance -= $book->price;
                    $acc->save();
                }else{
                    return 123;
                }
            }else{
                $account = new Account;
                $account->user_id = Auth::user()->id;
                if($transaction->credit == true){
                    $account->balance = $book->price;
                }
                $account->save();
            }
        }*/

        return redirect()->route('user.book_index')->with('success', 'Successfully Created');
    }
    public function book_destroy($id){
        $book = Book::find($id);
        $oldImg = $book->image;
        if($oldImg != 'no_image.png'){
            File::delete(public_path('/contents/images/book/'.$oldImg));
        }
        $book->delete();
        return redirect()->route('user.book_index')->with('error', 'Removed');
    }
}
