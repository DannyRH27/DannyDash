export const login = user => (
    $.ajax ({
        url: '/api/session',
        method: 'POST',
        data: {user}
    })
);

export const signup = user => (
    $.ajax ({
        url: '/api/users',
        method: 'POST',
        data: {user: user}
    })
);

export const update = (user) => (
  $.ajax({
    url: `/api/users/${user.id}`,
    method: 'PATCH',
    data: {user: user}
  })
);

export const logout = () => (
    $.ajax ({
        url: '/api/session',
        method: 'DELETE'
    })
);

export const fbsignup = () => (
    $.ajax({
        url: '/users/auth/facebook',
        method: 'GET'
    })
)