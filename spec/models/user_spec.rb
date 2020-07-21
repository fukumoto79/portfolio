it "is invalid with a duplicate email address" do
  #はじめにユーザーを登録
  user = create(:user)
  #先に登録したユーザーと同じemailの値を持つユーザーのインスタンスを作成
  another_user = build(:user, email: user.email)
  another_user.valid?
  expect(another_user.errors[:email]).to include("has already been taken")
end