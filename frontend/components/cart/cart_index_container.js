import { connect } from "react-redux";
import CartIndex from "./cart_index";
import { fetchCart, updateCart } from "../../actions/cart_actions";


const mapStateToProps = ({entities, session}) =>{
    return {
        currentUser: session.currentUser,
        cart: entities.cart
    }
};

const mapDispatchToProps = (dispatch) => ({
  updateCart: (cart) => dispatch(updateCart(cart))
});

export default connect(mapStateToProps, mapDispatchToProps)(CartIndex);